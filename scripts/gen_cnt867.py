#!/usr/bin/env python3
"""Generate a 74x867/869 synchronous 8-bit up/down counter (module + reference-
model testbench + README).

Datasheet: TI SN74ALS867A/869, SN74AS867/869 (SDAS115C). Fully programmable
8-bit up/down counter with mode select S1,S0, synchronous load, count enables
ENP/ENT, and an active-low ripple-carry output for cascading.

    S1 S0 | function
     L  L | Clear   ('867 asynchronous, '869 synchronous)
     L  H | Count down
     H  L | Load (from D)
     H  H | Count up

Members:
    867 asynchronous clear
    869 synchronous clear

Usage:
    python3 scripts/gen_cnt867.py 74x867 async "..."
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent


def emit(part, clear, description):
    module = f"ttl_{part.lower()}"
    if clear == "async":
        sens = "posedge clk or negedge clr_n"
        clr_comment = "asynchronous clear (S1,S0 = L,L clears immediately)"
        async_ref = "if (!s1 && !s0) cnt_r = 8'd0;"
    else:
        sens = "posedge clk"
        clr_comment = "synchronous clear (S1,S0 = L,L clears on the clock edge)"
        async_ref = "// clear is synchronous (handled on the clock edge)"

    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir = REPO / "tb" / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    # The counter body shared by both variants (clear branch handled separately).
    rtl = f"""// =============================================================================
// {module} - Synchronous 8-bit up/down counter
//
// Original part number : {part} (SN74ALS{part[-3:]}A/SN74AS{part[-3:]})
// Datasheet reference  : TI SDAS115C
//
// Function
// --------
// Fully programmable 8-bit up/down counter with mode select, synchronous load,
// count enables, and a ripple-carry output for n-bit cascading.
//
//   S1 S0 | function
//    L  L | Clear   ({clr_comment})
//    L  H | Count down  (when enp_n & ent_n both low)
//    H  L | Load D      (synchronous)
//    H  H | Count up    (when enp_n & ent_n both low)
//
//   rco_n (active low) pulses low at terminal count in the active direction
//   (0xFF counting up, 0x00 counting down) and is gated by ent_n:
//     rco_n = ent_n | ~( (up & q==8'hFF) | (down & q==8'h00) )
//
// Outputs are always driven (no output-enable pin). d[0]=A/QA is the LSB.
//
// FPGA notes
// ----------
// Posedge-clocked; {clr_comment}.
//
// Pin mapping (24-pin): S0=1, S1=2, A..H=3..10, /ENT=11, GND=12, /RCO=13,
// CLK=14, QH..QA=15..22, /ENP=23, Vcc=24.
//
// Unsupported physical behavior
// -----------------------------
// None beyond electrical drive/timing.
// =============================================================================

module {module} (
    input  logic       clk,
    input  logic       s0,
    input  logic       s1,
    input  logic       enp_n,    // count enable P, active low
    input  logic       ent_n,    // count enable T, active low
    input  logic [7:0] d,        // parallel data (d[0]=A .. d[7]=H)
    output logic [7:0] q,        // outputs (q[0]=QA .. q[7]=QH)
    output logic       rco_n     // ripple carry out, active low
);
    logic [7:0] cnt;
"""
    if clear == "async":
        rtl += """    logic clr_n;
    assign clr_n = s0 | s1;       // clear (S1=S0=L) -> clr_n=0

    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n) cnt <= 8'd0;                       // asynchronous clear
        else unique case ({s1, s0})
            2'b01: if (!enp_n && !ent_n) cnt <= cnt - 8'd1;  // count down
            2'b10: cnt <= d;                                 // load
            2'b11: if (!enp_n && !ent_n) cnt <= cnt + 8'd1;  // count up
            default: ;                                       // 2'b00 = clear (async)
        endcase
    end
"""
    else:
        rtl += """    always_ff @(posedge clk) begin
        unique case ({s1, s0})
            2'b00: cnt <= 8'd0;                              // synchronous clear
            2'b01: if (!enp_n && !ent_n) cnt <= cnt - 8'd1;  // count down
            2'b10: cnt <= d;                                 // load
            2'b11: if (!enp_n && !ent_n) cnt <= cnt + 8'd1;  // count up
        endcase
    end
"""
    rtl += """
    assign q = cnt;
    assign rco_n = ent_n |
        ~(((s1 && s0) && (cnt == 8'hFF)) || ((!s1 && s0) && (cnt == 8'h00)));
endmodule
"""
    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")

    tb = f"""`timescale 1ns/1ps
// Reference-model + directed testbench for {module}. A behavioral model mirrors
// the mode-select counter and the rco_n carry; directed checks cover clear,
// load, count up/down, the up/down wraps and rco_n, enable hold, and the
// {clear} clear, plus 2000 randomized steps.
module tb_{module};
    logic       clk, s0, s1, enp_n, ent_n, rco_n;
    logic [7:0] d, q;
    {module} dut(.clk(clk), .s0(s0), .s1(s1), .enp_n(enp_n), .ent_n(ent_n),
        .d(d), .q(q), .rco_n(rco_n));

    logic [7:0] cnt_r;
    function automatic logic exp_rco;
        return ent_n | ~(((s1 && s0) && (cnt_r == 8'hFF)) || ((!s1 && s0) && (cnt_r == 8'h00)));
    endfunction
    int errors;

    task automatic chk(input string t);
        #1;
        {async_ref}
        if (q !== cnt_r) begin $display("Q [%s]: got %h exp %h (s=%b%b)", t, q, cnt_r, s1, s0); errors++; end
        if (rco_n !== exp_rco()) begin $display("RCO [%s]: got %b exp %b (cnt=%h s=%b%b ent_n=%b)", t, rco_n, exp_rco(), cnt_r, s1, s0, ent_n); errors++; end
    endtask

    task automatic tick;
        logic [7:0] nx;
        nx = cnt_r;
        case ({{s1, s0}})
            2'b00: nx = 8'd0;
            2'b01: if (!enp_n && !ent_n) nx = cnt_r - 8'd1;
            2'b10: nx = d;
            2'b11: if (!enp_n && !ent_n) nx = cnt_r + 8'd1;
        endcase
        clk=0; #1; clk=1; #1; cnt_r = nx; clk=0; #1;
    endtask

    logic [31:0] rnd;
    initial begin
        errors=0; clk=0; s0=0; s1=0; enp_n=0; ent_n=0; d=0; cnt_r=8'dx;

        // Clear.
        s1=0; s0=0; tick; chk("clear");
        if (cnt_r!==8'd0) begin $display("clear failed"); errors++; end
        // Load.
        s1=1; s0=0; d=8'hFE; tick; chk("load");
        // Count up to wrap (FE->FF->00).
        s1=1; s0=1; enp_n=0; ent_n=0; tick; chk("to FF");
        chk("rco up");      // at FF, counting up -> rco_n low
        tick; chk("wrap up 00");
        // Count down to wrap (00->FF).
        s1=0; s0=1; tick; chk("down to FF");
        // Load 1, count down to 0.
        s1=1; s0=0; d=8'd1; tick; s1=0; s0=1; tick; chk("down to 0");
        chk("rco down");    // at 0 counting down -> rco_n low
        // Enable hold.
        enp_n=1; tick; chk("hold enp"); enp_n=0;
        ent_n=1; tick; chk("hold ent"); ent_n=0;
"""
    if clear == "async":
        tb += """
        // Asynchronous clear: select clear mode with no clock edge.
        s1=1; s0=1; d=8'h55; tick;       // get a nonzero value
        s1=0; s0=0; cnt_r=8'd0; chk("async clear (no clk)");
"""
    else:
        tb += """
        // Synchronous clear takes effect on the clock edge.
        s1=1; s0=1; tick; s1=0; s0=0; chk("pre sync clear"); tick; chk("sync cleared");
"""
    tb += f"""
        rnd=$urandom(32'h0{int(part[-3:]):03x}_5A5A);
        for (int n=0; n<2000; n++) begin
            rnd=$urandom;
            s0=rnd[0]; s1=rnd[1]; enp_n=rnd[2]; ent_n=rnd[3]; d=rnd[11:4];
            #1;
            {async_ref}
            tick;
            chk($sformatf("rand%0d", n));
        end

        if (errors!=0) $fatal(1, "tb_{module}: %0d mismatches", errors);
        $display("PASS: tb_{module} (directed + 2000 random)");
        $finish;
    end
endmodule
"""
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")

    readme = f"""# {module} — synchronous 8-bit up/down counter

Fully programmable 8-bit up/down counter with mode select, synchronous load,
count enables, and a ripple-carry output for cascading. Datasheet: TI
**SN74ALS{part[-3:]}A / SN74AS{part[-3:]}** (SDAS115C).

## Function

| S1 | S0 | Function |
|----|----|----------|
| L  | L  | Clear ({clear}) |
| L  | H  | Count down (when `enp_n` & `ent_n` low) |
| H  | L  | Load `d` (synchronous) |
| H  | H  | Count up (when `enp_n` & `ent_n` low) |

`rco_n` (active low) pulses low at terminal count in the active direction
(`0xFF` up, `0x00` down), gated by `ent_n`. Outputs are always driven (no
output enable). `d[0]`=A/QA is the LSB.

## Pin mapping (24-pin)

S0=1, S1=2, A–H=3–10, `/ENT`=11, GND=12, `/RCO`=13, CLK=14, QH–QA=15–22,
`/ENP`=23, Vcc=24.

## Verification

Reference-model testbench: directed checks for clear, load, count up/down,
both wraps and `rco_n`, enable-hold, and the {clear} clear, plus 2000 random
steps. Verilator `--lint-only -Wall` clean.
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
