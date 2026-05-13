#!/usr/bin/env python3
"""Generate a 74x245-style bidirectional bus transceiver module + tb + README.

Usage:
    python3 scripts/gen_xceiver.py 74x4T245 4 "Dual-supply 4-bit bus transceiver"
"""
from __future__ import annotations
import argparse
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

def emit(part: str, width: int, description: str):
    module = f"ttl_{part.lower()}"
    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir  = REPO / "tb"  / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)
    w = width - 1
    rtl = f"""// {module} - {description}.
module {module} (
    input  logic        oe_n, dir,
    input  logic [{w}:0] a_in, b_in,
    output logic [{w}:0] a_out, b_out,
    output logic        a_hiz, b_hiz
);
    assign b_out = (!oe_n &&  dir) ? a_in : {width}'b0;
    assign a_out = (!oe_n && !dir) ? b_in : {width}'b0;
    assign b_hiz = oe_n || !dir;
    assign a_hiz = oe_n ||  dir;
endmodule
"""
    tb = f"""`timescale 1ns/1ps
module tb_{module};
    logic oe_n, dir;
    logic [{w}:0] a_in, b_in, a_out, b_out;
    logic a_hiz, b_hiz;
    {module} dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; dir = 1; a_in = {width}'h{(1<<width)-1:x}; b_in = 0; #1;
        if (b_out !== {width}'h{(1<<width)-1:x}) errors++;
        if (errors != 0) $fatal(1, "tb_{module}: %0d errors", errors);
        $display("PASS: tb_{module}");
        $finish;
    end
endmodule
"""
    readme = f"""# {module} — {description}

{width}-bit version of [ttl_74x245](../ttl_74x245/README.md).
"""
    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")
    print(f"generated {module} ({width}-bit transceiver)")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("width", type=int)
    ap.add_argument("description")
    args = ap.parse_args()
    emit(args.part, args.width, args.description)

if __name__ == "__main__":
    main()
