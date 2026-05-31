#!/usr/bin/env python3
"""Generate a configurable multiple-function gate (74x.G57/58/97/98 family).

These "Little Logic" parts each implement one fixed three-input silicon
function; the user picks AND/OR/NAND/NOR/MUX/inverter/buffer/etc. by wiring the
inputs to Vcc/GND. The dual (2G) and triple (3G) members are N independent
copies of the same single-gate function.

Verified silicon functions (from the TI datasheets), per gate:
    97: y = in2 ? in0 : in1          (2-to-1 mux,  non-inverting)
    98: y = ~(in2 ? in0 : in1)       (2-to-1 mux,  inverting)
    57: y = in2 ? in1 : ~in0         (offers XNOR; SN74LVC1G57 Table 1)
    58: y = in2 ? ~in1 : in0         (= ~57; offers XOR; SN74LVC1G58)

Usage:
    python3 scripts/gen_config_gate.py 74x2G97 2 97 "Dual configurable multiple-function gate"
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

# Each entry: (expression template using {i}, datasheet part, human note)
VARIANTS = {
    "97": ("in2[{i}] ? in0[{i}] : in1[{i}]",
           "SN74LVC1G97",
           "2-to-1 mux selected by in2 (non-inverting)"),
    "98": ("~(in2[{i}] ? in0[{i}] : in1[{i}])",
           "SN74LVC1G98",
           "2-to-1 mux selected by in2 (inverting)"),
    "57": ("in2[{i}] ? in1[{i}] : ~in0[{i}]",
           "SN74LVC1G57",
           "configurable gate offering AND/OR/NAND/NOR/XNOR/inverter/buffer"),
    "58": ("in2[{i}] ? ~in1[{i}] : in0[{i}]",
           "SN74LVC1G58",
           "configurable gate offering AND/OR/NAND/NOR/XOR/inverter/buffer (= ~'57)"),
}

# scalar form for the N==1 single-gate case
SCALAR = {
    "97": "in2 ? in0 : in1",
    "98": "~(in2 ? in0 : in1)",
    "57": "in2 ? in1 : ~in0",
    "58": "in2 ? ~in1 : in0",
}


def emit(part: str, n: int, variant: str, description: str):
    module = f"ttl_{part.lower()}"
    expr_tmpl, datasheet, note = VARIANTS[variant]
    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir = REPO / "tb" / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    if n == 1:
        ports = ("    input  logic in0,\n"
                 "    input  logic in1,\n"
                 "    input  logic in2,\n"
                 "    output logic y")
        body = f"    assign y = {SCALAR[variant]};"
        tb_decl = "    logic in0, in1, in2, y, expected;"
        tb_conn = ".in0(in0), .in1(in1), .in2(in2), .y(y)"
        tb_loop = f"""        for (int i = 0; i < 8; i++) begin
            {{in2, in1, in0}} = i[2:0];
            #1;
            expected = {SCALAR[variant]};
            if (y !== expected) begin
                $display("Mismatch at in2=%b in1=%b in0=%b: got %b exp %b",
                         in2, in1, in0, y, expected);
                errors++;
            end
        end"""
        nvec = 8
    else:
        ports = (f"    input  logic [{n-1}:0] in0,\n"
                 f"    input  logic [{n-1}:0] in1,\n"
                 f"    input  logic [{n-1}:0] in2,\n"
                 f"    output logic [{n-1}:0] y")
        body = "\n".join(
            f"    assign y[{i}] = {expr_tmpl.format(i=i)};" for i in range(n)
        )
        # exhaustive over all 3*n input bits
        bits = 3 * n
        nvec = 1 << bits
        tb_decl = (f"    logic [{n-1}:0] in0, in1, in2, y, expected;")
        tb_conn = ".in0(in0), .in1(in1), .in2(in2), .y(y)"
        exp_lines = "\n".join(
            f"            expected[{i}] = {expr_tmpl.format(i=i)};" for i in range(n)
        )
        tb_loop = f"""        for (int v = 0; v < {nvec}; v++) begin
            {{in2, in1, in0}} = v[{bits-1}:0];
            #1;
{exp_lines}
            if (y !== expected) begin
                $display("Mismatch v=%0d: in2=%b in1=%b in0=%b got %b exp %b",
                         v, in2, in1, in0, y, expected);
                errors++;
            end
        end"""

    rtl = f"""// =============================================================================
// {module} - {description}
//
// Original part number : {part}
// Datasheet reference  : TI {datasheet} (single-gate function)
//
// Function (per gate)
// -------------------
// {note}.
// Each of the {n} gate(s) implements the verified single-gate silicon function:
//     y = {SCALAR[variant]}
//
// The "multiple-function" behavior comes from how the instantiator wires the
// three inputs (to Vcc/GND or together) to select AND/OR/NAND/NOR/MUX/inverter/
// buffer/etc. This module models the underlying silicon function only.
//
// FPGA notes
// ----------
// Pure combinational; {n} independent LUT3(s). No clock, reset, enable.
//
// Unsupported physical behavior
// -----------------------------
// Schmitt-trigger input hysteresis, voltage down-translation, and
// partial-power-down (Ioff) are electrical-only and not modeled. Inputs are
// treated as ideal logic levels.
// =============================================================================

module {module} (
{ports}
);

{body}

endmodule
"""

    tb = f"""`timescale 1ns/1ps
// Exhaustive testbench for {module}: all {nvec} input combinations checked
// against the verified single-gate function y = {SCALAR[variant]} ({datasheet}).
module tb_{module};
{tb_decl}
    {module} dut ({tb_conn});
    int errors;
    initial begin
        errors = 0;
{tb_loop}
        if (errors != 0) $fatal(1, "tb_{module}: %0d mismatches", errors);
        $display("PASS: tb_{module} ({nvec} vectors)");
        $finish;
    end
endmodule
"""

    units = {1: "single", 2: "dual", 3: "triple"}.get(n, f"{n}-gate")
    readme = f"""# {module} — {description}

{units.capitalize()} configurable multiple-function gate. Datasheet: TI
[{datasheet}](https://www.ti.com/lit/gpn/{datasheet.lower()}) (single-gate
function; this part packages {n} independent copy/copies).

## Function (per gate)

```
y = {SCALAR[variant]}
```

{note.capitalize()}. The "multiple-function" nature comes from wiring the three
inputs to Vcc/GND or together to select AND, OR, NAND, NOR, the 2-to-1 mux,
inverter, noninverting buffer, etc. This module models the underlying silicon
function only; configuration is the instantiator's wiring.

## Unsupported physical behavior

Schmitt-trigger input hysteresis, voltage down-translation, and
partial-power-down (Ioff) are electrical-only and out of scope (see
`docs/unsupported_physical_behavior.md`). Inputs are treated as ideal logic
levels.

## Verification

Exhaustive — all {nvec} input combinations checked against the verified
single-gate function. Verilator `--lint-only -Wall` clean.
"""

    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")
    print(f"generated {module} ({n}x variant {variant})")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("count", type=int, choices=[1, 2, 3])
    ap.add_argument("variant", choices=sorted(VARIANTS.keys()))
    ap.add_argument("description")
    args = ap.parse_args()
    emit(args.part, args.count, args.variant, args.description)


if __name__ == "__main__":
    main()
