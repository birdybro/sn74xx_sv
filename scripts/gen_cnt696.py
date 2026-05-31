#!/usr/bin/env python3
"""Generate a 74x696-699 synchronous UP/DOWN counter + register + multiplexed
3-state output chip (module + reference-model testbench + README).

Datasheet: TI SN54LS696-699 (D2424). Same counter+register+R/C-mux+/G structure
as the 690-693 family, but the counter is up/down (U/D pin) and there is no
register-clear pin (the register only loads from the counter on RCK).

Members:
    696 decade up/down, asynchronous (direct) clear
    697 binary up/down, asynchronous (direct) clear
    698 decade up/down, synchronous clear
    699 binary up/down, synchronous clear

Usage:
    python3 scripts/gen_cnt696.py 74x696 decade async "..."
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent


def emit(part, radix, clear, description):
    module = f"ttl_{part.lower()}"
    maxval = 9 if radix == "decade" else 15
    if clear == "async":
        cnt_sens = "posedge cck or negedge cclr_n"
        clr_comment = "asynchronous (direct) clear"
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
// Datasheet reference  : TI SN54LS696-699 (D2424)
//
// Function
// --------
// A 4-bit {radix} synchronous UP/DOWN counter feeds both the counter output and
// a snapshot register; an output multiplexer (R/C) selects which appears on the
// 3-state outputs. (Up/down version of the '690-693; no register-clear pin.)
//
//   Counter (clk cck):
//     - {clr_comment} via cclr_n (active low)
//     - synchronous parallel load from d when load_n low (on cck edge)
//     - counts when enp & ent: u_d=1 up, u_d=0 down; {radix} wrap
//       (up: {maxval} -> 0, down: 0 -> {maxval})
//     - rco = ent & (terminal count in the active direction)
//   Register (clk rck): captures the counter value on the rising edge of rck.
//     There is no register clear on this part.
//   Output:
//     - r_c selects: 0 = counter, 1 = register
//     - g_n (active low) enables the 3-state outputs; high-Z modeled as 0.
//
// Data/outputs are vectors with bit 0 = A / QA (LSB).
//
// FPGA notes
// ----------
// Two independent clock domains (cck, rck). 3-state output modeled as muxed 0.
//
// Pin mapping (20-pin): U/D=1, cck=2, A..D=3..6, enp=7, cclr_n=8, rck=9,
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
    input  logic       u_d,      // direction: 1 = up, 0 = down
    input  logic       enp,      // count enable P
    input  logic       ent,      // count enable T
    input  logic [3:0] d,        // parallel data (d[0]=A .. d[3]=D)
    input  logic       rck,      // register clock (posedge)
    input  logic       r_c,      // output select: 0=counter, 1=register
    input  logic       g_n,      // output enable, active low (3-state)
    output logic [3:0] q,        // 3-state outputs (q[0]=QA .. q[3]=QD)
    output logic       rco       // ripple carry out
);

    logic [3:0] cnt;
    logic [3:0] rreg;

    always_ff @({cnt_sens}) begin
        if (!cclr_n)         cnt <= 4'd0;
        else if (!load_n)    cnt <= d;
        else if (enp && ent) begin
            if (u_d) cnt <= (cnt == 4'd{maxval}) ? 4'd0        : cnt + 4'd1;  // up
            else     cnt <= (cnt == 4'd0)        ? 4'd{maxval} : cnt - 4'd1;  // down
        end
    end

    always_ff @(posedge rck) rreg <= cnt;   // snapshot register (no clear)

    assign rco = ent && (u_d ? (cnt == 4'd{maxval}) : (cnt == 4'd0));
    assign q   = g_n ? 4'd0 : (r_c ? rreg : cnt);

endmodule
"""
    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")

    tb = f"""`timescale 1ns/1ps
// Reference-model + directed testbench for {module} (up/down counter + register
// + R/C mux + /G). A behavioral reference mirrors the semantics; directed checks
// cover up/down counting and the {radix} wraps in both directions, rco, load,
// hold, register capture/hold, R/C, /G, and the {clear} counter clear; followed
// by 1500 randomized steps.
module tb_{module};
    logic       cck, cclr_n, load_n, u_d, enp, ent, rck, r_c, g_n;
    logic [3:0] d, q;
    logic       rco;
    {module} dut (.cck(cck), .cclr_n(cclr_n), .load_n(load_n), .u_d(u_d),
        .enp(enp), .ent(ent), .d(d), .rck(rck), .r_c(r_c), .g_n(g_n),
        .q(q), .rco(rco));

    localparam logic [3:0] MAXV = 4'd{maxval};

    logic [3:0] cnt_r, rreg_r;
    function automatic logic [3:0] exp_q; return g_n ? 4'd0 : (r_c ? rreg_r : cnt_r); endfunction
    function automatic logic       exp_rco; return ent && (u_d ? (cnt_r == MAXV) : (cnt_r == 4'd0)); endfunction

    int errors;

    task automatic chk(input string tag);
        #1;
        {async_cnt_clr_line}
        if (q !== exp_q())   begin $display("Q mismatch [%s]: got %b exp %b (cnt=%0d reg=%0d r_c=%b g_n=%b)", tag, q, exp_q(), cnt_r, rreg_r, r_c, g_n); errors++; end
        if (rco !== exp_rco()) begin $display("RCO mismatch [%s]: got %b exp %b (cnt=%0d u_d=%b ent=%b)", tag, rco, exp_rco(), cnt_r, u_d, ent); errors++; end
    endtask

    task automatic ctick;
        logic [3:0] nx;
        if (!cclr_n)         nx = 4'd0;
        else if (!load_n)    nx = d;
        else if (enp && ent) nx = u_d ? ((cnt_r == MAXV) ? 4'd0 : cnt_r + 4'd1)
                                      : ((cnt_r == 4'd0) ? MAXV : cnt_r - 4'd1);
        else                 nx = cnt_r;
        cck = 0; #1; cck = 1; #1; cnt_r = nx; cck = 0; #1;
    endtask

    task automatic rtick;
        cck = 0; rck = 0; #1; rck = 1; #1; rreg_r = cnt_r; rck = 0; #1;
    endtask

    logic [31:0] rnd;
    initial begin
        errors = 0;
        cck=0; rck=0; cclr_n=1; load_n=1; u_d=1; enp=0; ent=0; d=0; r_c=0; g_n=0;
        cnt_r=4'dx; rreg_r=4'dx;

        // Known state.
        load_n=0; d=4'd0; ctick; load_n=1; rtick; chk("init");

        // Count up to the wrap.
        enp=1; ent=1; u_d=1;
        load_n=0; d=MAXV; ctick; load_n=1; chk("load max");
        if (cnt_r !== MAXV) begin $display("expected MAXV"); errors++; end
        ctick; chk("up wrap");                 // MAXV -> 0
        if (cnt_r !== 4'd0) begin $display("expected up wrap 0"); errors++; end

        // Count down through the wrap.
        u_d=0; ctick; chk("down wrap");        // 0 -> MAXV
        if (cnt_r !== MAXV) begin $display("expected down wrap MAXV"); errors++; end
        u_d=1;

        // Hold.
        enp=0; ctick; chk("hold"); enp=1;

        // Register capture + R/C mux + hold.
        ctick; ctick; rtick; chk("rcapture");
        r_c=1; chk("sel reg"); r_c=0;
        ctick; r_c=1; chk("reg holds"); r_c=0;

        // /G.
        g_n=1; chk("oe off"); g_n=0; chk("oe on");
"""
    if clear == "async":
        tb += """
        // Asynchronous counter clear (no clock edge).
        cclr_n = 0; cnt_r = 4'd0; chk("async clear"); cclr_n = 1;
"""
    else:
        tb += """
        // Synchronous counter clear (takes effect on cck edge).
        cclr_n = 0; ctick; cclr_n = 1; chk("sync clear");
"""
    tb += f"""
        // Randomized soak.
        rnd = $urandom(32'h{int(part[-3:]):04x}_CAFE);
        for (int n = 0; n < 1500; n++) begin
            rnd = $urandom;
            cclr_n = rnd[0]; load_n = rnd[1]; enp = rnd[2]; ent = rnd[3];
            u_d = rnd[4]; r_c = rnd[5]; g_n = rnd[6]; d = rnd[10:7];
            #1;
            {async_cnt_clr_line}
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

4-bit {radix} synchronous **up/down** counter with a snapshot register and
multiplexed 3-state outputs. Datasheet: TI **SN54LS696-699** (D2424). Up/down
version of the [690-693](../ttl_74x690/README.md) family; this part has **no
register-clear pin**.

## Function

- **Counter** (clock `cck`): {clr_comment} via `cclr_n`; synchronous parallel
  load from `d` when `load_n` low; counts when `enp & ent` — `u_d`=1 up,
  `u_d`=0 down; {radix} wrap (up `{maxval} -> 0`, down `0 -> {maxval}`).
  `rco = ent & (terminal count in the active direction)`.
- **Register** (clock `rck`): captures the counter value on the rising edge;
  no clear.
- **Output**: `r_c` selects counter (0) or register (1); `g_n` (active low)
  enables the 3-state outputs (high-Z modeled as driven 0).

`d`/`q` are vectors with bit 0 = A/QA (LSB).

## Pin mapping (20-pin)

`U/D`=1, `cck`=2, A–D=3–6, `enp`=7, `cclr_n`=8, `rck`=9, GND=10, `R/C`=11,
`/G`=12, `/LOAD`=13, `ent`=14, QD–QA=15–18, `rco`=19, Vcc=20.

## Verification

Reference-model testbench: directed checks for up/down counting and both
{radix} wraps, `rco`, load, hold, register capture/hold, `R/C`, `/G`, and the
{clear} counter clear, plus 1500 randomized steps. Verilator `--lint-only
-Wall` clean.
"""
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    print(f"generated {module} ({radix}, {clear} clear, up/down)")


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
