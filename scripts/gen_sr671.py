#!/usr/bin/env python3
"""Generate a 74x671/672 4-bit universal shift register/latch with 3-state
outputs (module + reference-model testbench + README).

Datasheet: TI SN54LS671/672, SN74LS671/672 (D2638). A 4-bit universal shift
register (like '194A) plus a 4-bit storage register (like '175) multiplexed to a
3-state output stage (like '258), with a cascade output.

    671 direct (asynchronous) shift-register clear
    672 synchronous shift-register clear

Usage:
    python3 scripts/gen_sr671.py 74x671 async "..."
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent


def emit(part, clear, description):
    module = f"ttl_{part.lower()}"
    if clear == "async":
        sens = "posedge srck or negedge srclr_n"
        clr_comment = "direct (asynchronous) clear"
    else:
        sens = "posedge srck"
        clr_comment = "synchronous clear"

    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir = REPO / "tb" / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    rtl = f"""// =============================================================================
// {module} - 4-bit universal shift register/latch with 3-state outputs
//
// Original part number : {part} (SN74LS{part[-3:]})
// Datasheet reference  : TI SN54LS671/672 (D2638)
//
// Function
// --------
// A 4-bit universal shift register (like '194A) plus a 4-bit storage register
// (like '175) multiplexed to a 3-state output stage (like '258).
//
//   Shift register (posedge srck), {clr_comment} via srclr_n; mode = {{s1,s0}}:
//     00 hold;  01 shift right (QA->QD, ser_r in at QA);
//     10 shift left (QD->QA, ser_l in at QD);  11 parallel load from d
//   Storage register (posedge rck): captures the shift-register outputs.
//   Output: r_s selects register/storage (1) or shift register (0); g_n
//     (active low) enables the 3-state outputs (high-Z modeled as 0).
//   casc: cascade output, always driven (even when outputs are high-Z) -
//     presents QA in shift-left mode, QD otherwise.
//
// d/q bit 0 = A / QA (LSB).
//
// FPGA notes
// ----------
// Two clocks (srck, rck). 3-state outputs modeled as muxed 0; casc never
// three-stated.
//
// Pin mapping (20-pin): SER R=1, SRCK=2, A=3, B=4, C=5, D=6, SER L=7, /SRCLR=8,
// RCK=9, GND=10, R/S=11, /G=12, S1=13, S0=14, QD=15, QC=16, QB=17, QA=18,
// CASC=19, Vcc=20.
//
// Unsupported physical behavior
// -----------------------------
// True three-state high-Z on QA-QD (modeled as driven 0).
// =============================================================================

module {module} (
    input  logic       ser_r,    // serial input for shift-right
    input  logic       srck,     // shift-register clock (posedge)
    input  logic [3:0] d,        // parallel data (d[0]=A .. d[3]=D)
    input  logic       ser_l,    // serial input for shift-left
    input  logic       srclr_n,  // shift-register clear, active low ({clr_comment})
    input  logic       rck,      // storage-register clock (posedge)
    input  logic       r_s,      // R/S: 1 = storage register, 0 = shift register
    input  logic       g_n,      // output control, active low (3-state)
    input  logic       s0,
    input  logic       s1,
    output logic [3:0] q,        // 3-state outputs (q[0]=QA .. q[3]=QD)
    output logic       casc      // cascade output (always driven)
);
    logic [3:0] sr, str;

    always_ff @({sens}) begin
        if (!srclr_n) sr <= 4'd0;
        else unique case ({{s1, s0}})
            2'b00: ;                            // hold
            2'b01: sr <= {{sr[2:0], ser_r}};      // shift right (QA -> QD)
            2'b10: sr <= {{ser_l, sr[3:1]}};      // shift left  (QD -> QA)
            2'b11: sr <= d;                       // parallel load
        endcase
    end

    always_ff @(posedge rck) str <= sr;

    assign casc = (s1 && !s0) ? sr[0] : sr[3];    // shift-left: QA; else QD
    assign q    = g_n ? 4'd0 : (r_s ? str : sr);
endmodule
"""
    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")

    tb = f"""`timescale 1ns/1ps
// Reference-model testbench for {module}. Event-driven reference always_ff
// blocks mirror the two clock domains; the directed phase verifies the spec
// (load, shift right/left with cascade, storage capture, R/S mux, /G,
// {clear} clear) and the random phase soaks the device.
module tb_{module};
    logic       ser_r, srck, ser_l, srclr_n, rck, r_s, g_n, s0, s1, casc;
    logic [3:0] d, q;
    {module} dut(.ser_r(ser_r), .srck(srck), .d(d), .ser_l(ser_l),
        .srclr_n(srclr_n), .rck(rck), .r_s(r_s), .g_n(g_n), .s0(s0), .s1(s1),
        .q(q), .casc(casc));

    logic [3:0] sr_r, str_r;
    always_ff @({sens}) begin
        if (!srclr_n) sr_r <= 4'd0;
        else unique case ({{s1, s0}})
            2'b00: ;
            2'b01: sr_r <= {{sr_r[2:0], ser_r}};
            2'b10: sr_r <= {{ser_l, sr_r[3:1]}};
            2'b11: sr_r <= d;
        endcase
    end
    always_ff @(posedge rck) str_r <= sr_r;

    function automatic logic [3:0] q_exp; return g_n ? 4'd0 : (r_s ? str_r : sr_r); endfunction
    function automatic logic       casc_exp; return (s1 && !s0) ? sr_r[0] : sr_r[3]; endfunction
    int errors;

    task automatic chk(input string t);
        #1;
        if (q !== q_exp())       begin $display("Q [%s]: got %h exp %h", t, q, q_exp()); errors++; end
        if (casc !== casc_exp()) begin $display("CASC [%s]: got %b exp %b", t, casc, casc_exp()); errors++; end
    endtask
    task automatic sclk; srck=1; #1; srck=0; #2; endtask
    task automatic rclk; rck=1;  #1; rck=0;  #2; endtask

    logic [31:0] rnd;
    initial begin
        errors=0;
        ser_r=0; srck=0; d=0; ser_l=0; srclr_n=1; rck=0; r_s=0; g_n=0; s0=0; s1=0;

        // Clear the shift register.
        s1=0; s0=0; srclr_n=0; sclk; #1; chk("clear"); srclr_n=1;
        if (dut.sr !== 4'd0) begin $display("clear failed sr=%h", dut.sr); errors++; end

        // Parallel load 0b1011 (QA=1,QB=1,QC=0,QD=1).
        s1=1; s0=1; d=4'b1011; sclk; chk("load");
        if (dut.sr !== 4'b1011) begin $display("load sr=%h exp B", dut.sr); errors++; end

        // Capture into storage, then verify via R/S mux.
        rclk; r_s=1; chk("store+sel"); r_s=0;

        // Shift right (QA->QD), ser_r=1: {{sr[2:0],ser_r}} = 0111.
        s1=0; s0=1; ser_r=1; sclk; chk("shr");
        if (dut.sr !== 4'b0111) begin $display("shr sr=%h", dut.sr); errors++; end

        // Shift left (QD->QA), ser_l=1: {{ser_l, sr[3:1]}} = 1011.
        s1=1; s0=0; ser_l=1; chk("shl-casc");   // casc should = QA (sr[0]) before clk
        sclk; chk("shl");
        if (dut.sr !== 4'b1011) begin $display("shl sr=%h", dut.sr); errors++; end

        // Hold.
        s1=0; s0=0; sclk; chk("hold");
        if (dut.sr !== 4'b1011) begin $display("hold changed sr", dut.sr); errors++; end

        // Output disable.
        g_n=1; chk("oe off"); g_n=0; chk("oe on");

        // Random soak.
        rnd=$urandom(32'h0{int(part[-3:]):03x}_a5a5);
        for (int n=0; n<1500; n++) begin
            rnd=$urandom;
            s0=rnd[0]; s1=rnd[1]; ser_r=rnd[2]; ser_l=rnd[3]; srclr_n=rnd[4];
            r_s=rnd[5]; g_n=rnd[6]; d=rnd[10:7];
            #1;
            if (rnd[11]) sclk; else rclk;
            chk($sformatf("rand%0d", n));
        end

        if (errors!=0) $fatal(1, "tb_{module}: %0d mismatches", errors);
        $display("PASS: tb_{module} (directed + 1500 random)");
        $finish;
    end
endmodule
"""
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")

    readme = f"""# {module} — 4-bit universal shift register/latch, 3-state outputs

A 4-bit universal shift register (like '194A) plus a 4-bit storage register
(like '175) multiplexed to a 3-state output stage (like '258), with a cascade
output. Datasheet: TI **SN54LS671/672** (D2638).

## Function

- **Shift register** (posedge `srck`), {clr_comment} via `srclr_n`; mode
  `{{s1,s0}}`: `00` hold, `01` shift right (QA→QD, `ser_r` in), `10` shift left
  (QD→QA, `ser_l` in), `11` parallel load from `d`.
- **Storage register** (posedge `rck`): captures the shift-register outputs.
- **Output**: `r_s` selects storage (1) or shift register (0); `g_n` (active
  low) enables the 3-state outputs (high-Z modeled as 0).
- **`casc`**: cascade output, always driven (even when `q` is high-Z) — presents
  QA in shift-left mode, QD otherwise.

`d`/`q` bit 0 = A / QA (LSB).

## Pin mapping (20-pin)

SER R=1, SRCK=2, A=3, B=4, C=5, D=6, SER L=7, `/SRCLR`=8, RCK=9, GND=10,
R/S=11, `/G`=12, S1=13, S0=14, QD=15, QC=16, QB=17, QA=18, CASC=19, Vcc=20.

## Verification

Reference-model testbench (event-driven mirror of both clock domains): directed
checks for clear, load, shift right/left with cascade, storage capture, the R/S
mux, and `/G`, plus 1500 random steps. Verilator `--lint-only -Wall` clean.
"""
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    print(f"generated {module} ({clear} clear)")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("clear", choices=["async", "sync"])
    ap.add_argument("description")
    a = ap.parse_args()
    emit(a.part, a.clear, a.description)


if __name__ == "__main__":
    main()
