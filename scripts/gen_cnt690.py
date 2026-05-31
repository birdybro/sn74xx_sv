#!/usr/bin/env python3
"""Generate a 74x690-693 synchronous counter + register + multiplexed 3-state
output chip (module + reference-model testbench + README).

Datasheet: TI SN54LS690-693 (D2423). The family is one 4-bit synchronous
counter feeding both a set of output flip-flops and a snapshot register; an
output multiplexer (R/C) selects counter or register onto 3-state outputs (/G).

Members (this generator covers the four with a single storage register):
    690 decade  counter, asynchronous clear
    691 binary  counter, asynchronous clear
    692 decade  counter, synchronous  clear
    693 binary  counter, synchronous  clear

Usage:
    python3 scripts/gen_cnt690.py 74x690 decade async "..."
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent


def emit(part, radix, clear, description):
    module = f"ttl_{part.lower()}"
    maxval = 9 if radix == "decade" else 15
    # counter always_ff sensitivity / clear branch
    if clear == "async":
        cnt_sens = "posedge cck or negedge cclr_n"
        clr_comment = "asynchronous clear"
        async_cnt_clr_line = "if (!cclr_n) cnt_r = 4'd0;"
    else:
        cnt_sens = "posedge cck"
        clr_comment = "synchronous clear"
        async_cnt_clr_line = "// counter clear is synchronous (handled on cck edge)"

    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir = REPO / "tb" / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    rtl = f"""// =============================================================================
// {module} - {description}
//
// Original part number : {part} (SN74LS{part[-3:]})
// Datasheet reference  : TI SN54LS690-693 (D2423)
//
// Function
// --------
// A 4-bit {radix} synchronous counter feeds both the counter output and a
// snapshot register; an output multiplexer (R/C) selects which appears on the
// 3-state outputs.
//
//   Counter (clk cck):
//     - {clr_comment} via cclr_n (active low)
//     - synchronous parallel load from d when load_n low (on cck edge)
//     - counts up when enp & ent; {radix} count wraps {maxval} -> 0
//     - rco = ent & (count == {maxval})        (ripple carry, for cascading)
//   Register (clk rck): captures the counter value on the rising edge of rck;
//     asynchronous clear via rclr_n (active low).
//   Output:
//     - r_c selects: 0 = counter, 1 = register
//     - g_n (active low) enables the 3-state outputs; high-Z modeled as 0.
//
// Data/outputs are vectors with bit 0 = A / QA (LSB), matching datasheet
// pins A,B,C,D and QA,QB,QC,QD.
//
// FPGA notes
// ----------
// Two independent clock domains (cck, rck) as on the real device. 3-state
// output modeled as muxed 0 per library convention.
//
// Pin mapping (20-pin): cclr_n=1, cck=2, A..D=3..6, enp=7, rclr_n=8, rck=9,
// GND=10, R/C=11, /G=12, /LOAD=13, ent=14, QD..QA=15..18, rco=19, Vcc=20.
//
// Unsupported physical behavior
// -----------------------------
// True three-state high-Z (modeled as driven 0); electrical drive/timing.
// =============================================================================

module {module} (
    input  logic       cck,      // counter clock (posedge)
    input  logic       cclr_n,   // counter clear, active low ({clr_comment})
    input  logic       load_n,   // synchronous parallel load, active low
    input  logic       enp,      // count enable P
    input  logic       ent,      // count enable T
    input  logic [3:0] d,        // parallel data (d[0]=A .. d[3]=D)
    input  logic       rck,      // register clock (posedge)
    input  logic       rclr_n,   // register clear, active low (asynchronous)
    input  logic       r_c,      // output select: 0=counter, 1=register
    input  logic       g_n,      // output enable, active low (3-state)
    output logic [3:0] q,        // 3-state outputs (q[0]=QA .. q[3]=QD)
    output logic       rco       // ripple carry out
);

    logic [3:0] cnt;             // counter
    logic [3:0] rreg;            // snapshot register

    always_ff @({cnt_sens}) begin
        if (!cclr_n)         cnt <= 4'd0;
        else if (!load_n)    cnt <= d;
        else if (enp && ent) cnt <= (cnt == 4'd{maxval}) ? 4'd0 : cnt + 4'd1;
    end

    always_ff @(posedge rck or negedge rclr_n) begin
        if (!rclr_n) rreg <= 4'd0;
        else         rreg <= cnt;
    end

    assign rco = ent && (cnt == 4'd{maxval});
    assign q   = g_n ? 4'd0 : (r_c ? rreg : cnt);

endmodule
"""

    rtl_path = rtl_dir / f"{module}.sv"
    rtl_path.write_text(rtl, encoding="utf-8")

    tb = f"""`timescale 1ns/1ps
// Reference-model + directed testbench for {module}. A behavioral reference
// mirrors the intended counter/register/mux semantics; randomized stimulus
// (including clear asserted between clock edges, which distinguishes
// asynchronous from synchronous clear) is applied to both and compared every
// step, plus directed checks on the {radix} wrap value and the R/C and /G muxes.
module tb_{module};
    logic       cck, cclr_n, load_n, enp, ent, rck, rclr_n, r_c, g_n;
    logic [3:0] d, q;
    logic       rco;
    {module} dut (.cck(cck), .cclr_n(cclr_n), .load_n(load_n), .enp(enp),
        .ent(ent), .d(d), .rck(rck), .rclr_n(rclr_n), .r_c(r_c), .g_n(g_n),
        .q(q), .rco(rco));

    localparam logic [3:0] MAXV = 4'd{maxval};

    // Reference state.
    logic [3:0] cnt_r, rreg_r;
    function automatic logic [3:0] exp_q; return g_n ? 4'd0 : (r_c ? rreg_r : cnt_r); endfunction
    function automatic logic       exp_rco; return ent && (cnt_r == MAXV); endfunction

    int errors;

    task automatic chk(input string tag);
        #1;
        // Model level-sensitive asynchronous clears (the DUT applies these the
        // instant the line goes low, with no clock edge).
        {async_cnt_clr_line}
        if (!rclr_n) rreg_r = 4'd0;                 // register clear is async
        if (q !== exp_q())   begin $display("Q mismatch [%s]: got %b exp %b (cnt=%0d reg=%0d r_c=%b g_n=%b)", tag, q, exp_q(), cnt_r, rreg_r, r_c, g_n); errors++; end
        if (rco !== exp_rco()) begin $display("RCO mismatch [%s]: got %b exp %b", tag, rco, exp_rco()); errors++; end
    endtask

    // Apply a counter clock edge to DUT and reference together.
    task automatic ctick;
        // reference update mirrors the RTL counter
        logic [3:0] nx;
        if (!cclr_n)         nx = 4'd0;
        else if (!load_n)    nx = d;
        else if (enp && ent) nx = (cnt_r == MAXV) ? 4'd0 : cnt_r + 4'd1;
        else                 nx = cnt_r;
        cck = 0; #1; cck = 1; #1; cnt_r = nx; cck = 0; #1;
    endtask

    // Register clock edge.
    task automatic rtick;
        logic [3:0] nx;
        nx = !rclr_n ? 4'd0 : cnt_r;
        rck = 0; #1; rck = 1; #1; rreg_r = nx; rck = 0; #1;
    endtask
"""
    if clear == "async":
        tb += f"""
    // Asynchronous counter clear: assert cclr_n with NO clock edge.
    task automatic async_clear;
        cclr_n = 0; cnt_r = 4'd0; #1; cclr_n = 1; #1;
    endtask
"""
    else:
        tb += f"""
    // Synchronous counter clear: cclr_n takes effect only on a cck edge.
    task automatic sync_clear;
        cclr_n = 0; ctick; cclr_n = 1;
    endtask
"""
    tb += f"""
    // Asynchronous register clear.
    task automatic rclear; rclr_n = 0; rreg_r = 4'd0; #1; rclr_n = 1; #1; endtask

    logic [31:0] rnd;
    initial begin
        errors = 0;
        cck=0; rck=0; cclr_n=1; load_n=1; enp=0; ent=0; d=0; rclr_n=1; r_c=0; g_n=0;
        cnt_r=4'dx; rreg_r=4'dx;

        // Establish known state.
        load_n=0; d=4'd0; ctick; load_n=1; rtick; chk("init");

        // Directed: load, then count through a full wrap and check rco/wrap.
        load_n=0; d=4'd{maxval-1 if maxval>0 else 0}; ctick; load_n=1; chk("load");
        enp=1; ent=1;
        ctick; chk("to max");          // -> MAXV
        if (cnt_r !== MAXV) begin $display("expected MAXV"); errors++; end
        ctick; chk("wrap");            // wraps MAXV -> 0
        if (cnt_r !== 4'd0) begin $display("expected wrap to 0"); errors++; end

        // Hold (enp=0).
        enp=0; ctick; chk("hold"); enp=1;

        // Register capture + R/C mux.
        ctick; ctick; rtick; chk("rcapture");
        r_c=1; chk("sel reg"); r_c=0;
        // change counter, register must hold until next rtick
        ctick; r_c=1; chk("reg holds"); r_c=0;

        // /G three-state.
        g_n=1; chk("oe off"); g_n=0; chk("oe on");

        // Register clear.
        rclear; r_c=1; chk("rclr"); r_c=0;
"""
    if clear == "async":
        tb += """
        // Counter clear behavior.
        async_clear; chk("async clear");
"""
    else:
        tb += """
        // Counter clear behavior (synchronous).
        sync_clear; chk("sync clear");
"""
    tb += f"""
        // Randomized soak: random controls, alternating clock edges.
        rnd = $urandom(32'h{int(part[-3:]):04x}_BEEF);
        for (int n = 0; n < 1500; n++) begin
            rnd = $urandom;
            cclr_n = rnd[0]; load_n = rnd[1]; enp = rnd[2]; ent = rnd[3];
            rclr_n = rnd[4]; r_c = rnd[5]; g_n = rnd[6]; d = rnd[10:7];
            #1;
            // Apply level-sensitive async clears to the reference BEFORE the
            // tick, so a register capture sees the same counter the DUT does.
            {async_cnt_clr_line}
            if (!rclr_n) rreg_r = 4'd0;
            if (rnd[11]) ctick; else rtick;
            chk($sformatf("rand %0d", n));
        end

        if (errors != 0) $fatal(1, "tb_{module}: %0d mismatches", errors);
        $display("PASS: tb_{module} (directed + 1500 random)");
        $finish;
    end
endmodule
"""
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")

    readme = f"""# {module} — {description}

4-bit {radix} synchronous counter with a snapshot register and multiplexed
3-state outputs. Datasheet: TI **SN54LS690-693** (D2423).

## Function

- **Counter** (clock `cck`): {clr_comment} via `cclr_n`; synchronous parallel
  load from `d` when `load_n` low; counts up when `enp & ent`; {radix} count
  wraps `{maxval} -> 0`. `rco = ent & (count == {maxval})` for cascading.
- **Register** (clock `rck`): captures the counter value on the rising edge;
  asynchronous clear via `rclr_n`.
- **Output**: `r_c` selects counter (0) or register (1); `g_n` (active low)
  enables the 3-state outputs (high-Z modeled as driven 0).

`d`/`q` are vectors with bit 0 = A/QA (LSB).

## Pin mapping (20-pin)

`cclr_n`=1, `cck`=2, A–D=3–6, `enp`=7, `rclr_n`=8, `rck`=9, GND=10,
`R/C`=11, `/G`=12, `/LOAD`=13, `ent`=14, QD–QA=15–18, `rco`=19, Vcc=20.

## Verification

Reference-model testbench: a behavioral model mirrors the semantics; directed
checks cover load, the {radix} wrap and `rco`, hold, register capture/hold,
`R/C` select, `/G`, both clears (including clear asserted between clock edges to
exercise the {clear} counter-clear), plus 1500 randomized steps. Verilator
`--lint-only -Wall` clean.
"""
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    print(f"generated {module} ({radix}, {clear} clear)")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("radix", choices=["decade", "binary"])
    ap.add_argument("clear", choices=["async", "sync"])
    ap.add_argument("description")
    a = ap.parse_args()
    emit(a.part, a.radix, a.clear, a.description)


if __name__ == "__main__":
    main()
