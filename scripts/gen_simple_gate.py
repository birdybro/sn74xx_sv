#!/usr/bin/env python3
"""Generate a simple gate chip module + README + testbench.

Usage:
    python3 scripts/gen_simple_gate.py 74x2G00 2 nand "Dual 2-input NAND gate"
    python3 scripts/gen_simple_gate.py 74x3G04 3 inv  "Triple inverter gate"
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

OPS = {
    "nand": ("~(a[{i}] & b[{i}])", 2),
    "nor":  ("~(a[{i}] | b[{i}])", 2),
    "and":  ("a[{i}] & b[{i}]",    2),
    "or":   ("a[{i}] | b[{i}]",    2),
    "xor":  ("a[{i}] ^ b[{i}]",    2),
    "xnor": ("~(a[{i}] ^ b[{i}])", 2),
    "inv":  ("~a[{i}]",            1),
    "buf":  ("a[{i}]",             1),
}

def emit(part: str, n: int, op: str, description: str):
    module = f"ttl_{part.lower()}"
    expr_tmpl, n_in = OPS[op]
    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir  = REPO / "tb"  / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    if n_in == 2:
        ports = f"    input  logic [{n-1}:0] a, b,\n    output logic [{n-1}:0] y"
    else:
        ports = f"    input  logic [{n-1}:0] a,\n    output logic [{n-1}:0] y"

    assigns = "\n".join(f"    assign y[{i}] = {expr_tmpl.format(i=i)};" for i in range(n))

    rtl = f"""// {module} - {description}.
module {module} (
{ports}
);
{assigns}
endmodule
"""

    tb_decl = (f"    logic [{n-1}:0] a, b, y;" if n_in == 2 else f"    logic [{n-1}:0] a, y;")
    # Simple test: any non-zero result
    if op == "and":
        tb_set = f"a = {n}'h{((1<<n)-1):x}; b = {n}'h{((1<<n)-1):x};"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"
    elif op == "or":
        tb_set = f"a = {n}'h{((1<<n)-1):x}; b = 0;"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"
    elif op == "nand":
        tb_set = f"a = {n}'h{((1<<n)-1):x}; b = {n}'h{((1<<n)-1):x};"
        tb_check = f"y === {n}'h0"
    elif op == "nor":
        tb_set = f"a = 0; b = 0;"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"
    elif op == "xor":
        tb_set = f"a = {n}'h{((1<<n)-1):x}; b = 0;"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"
    elif op == "xnor":
        tb_set = f"a = {n}'h{((1<<n)-1):x}; b = {n}'h{((1<<n)-1):x};"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"
    elif op == "inv":
        tb_set = f"a = 0;"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"
    else:  # buf
        tb_set = f"a = {n}'h{((1<<n)-1):x};"
        tb_check = f"y === {n}'h{((1<<n)-1):x}"

    tb = f"""`timescale 1ns/1ps
module tb_{module};
{tb_decl}
    {module} dut(.*);
    int errors;
    initial begin
        errors = 0;
        {tb_set} #1;
        if (!({tb_check})) errors++;
        if (errors != 0) $fatal(1, "tb_{module}: %0d errors", errors);
        $display("PASS: tb_{module}");
        $finish;
    end
endmodule
"""

    readme = f"""# {module} — {description}
"""

    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")
    print(f"generated {module} ({n}x {op})")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("count", type=int)
    ap.add_argument("op", choices=list(OPS.keys()))
    ap.add_argument("description")
    args = ap.parse_args()
    emit(args.part, args.count, args.op, args.description)

if __name__ == "__main__":
    main()
