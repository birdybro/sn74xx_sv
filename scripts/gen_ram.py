#!/usr/bin/env python3
"""Generate a RAM chip module + README + testbench from parameters.

Usage:
    python3 scripts/gen_ram.py 74x200 256 1 --description "256x1 RAM"
"""
from __future__ import annotations
import argparse
import math
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

def addr_width(words: int) -> int:
    return max(1, math.ceil(math.log2(words)))

def emit(part: str, words: int, bits: int, inverted_out: bool, description: str):
    module = f"ttl_{part.lower()}"
    addr_w = addr_width(words)
    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir  = REPO / "tb"  / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    data_t   = f"[{bits-1}:0]" if bits > 1 else ""
    addr_t   = f"[{addr_w-1}:0]" if addr_w > 1 else ""
    data_lit = f"{bits}'h0" if bits > 1 else "1'b0"
    inv_op   = "~" if inverted_out else ""
    out_name = "data_out_n" if inverted_out else "data_out"
    init_call = "$readmemh" if bits > 1 else "$readmemb"

    rtl = f"""// {module} - {description}
// Sync write, async read. {f"Outputs are inverted." if inverted_out else ""}
module {module} #(parameter INIT_FILE = "")
(
    input  logic        clk,
    input  logic {addr_t} addr,
    input  logic {data_t} data_in,
    input  logic        we_n,
    input  logic        cs_n,
    output logic {data_t} {out_name}
);
    logic {data_t} mem [0:{words-1}];
    initial begin
        if (INIT_FILE != "") {init_call}(INIT_FILE, mem);
    end
    always_ff @(posedge clk) begin
        if (!cs_n && !we_n) mem[addr] <= data_in;
    end
    assign {out_name} = (!cs_n) ? {inv_op}mem[addr] : {data_lit};
endmodule
"""

    readme = f"""# {module} — {description}

{words}-word x {bits}-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.
{f"Outputs are inverted." if inverted_out else ""}
"""

    tb = f"""`timescale 1ns/1ps
module tb_{module};
    logic clk;
    logic {addr_t} addr;
    logic {data_t} data_in, {out_name};
    logic we_n, cs_n;
    {module} dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .{out_name}({out_name}));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; cs_n = 0; we_n = 0;
        addr = {addr_w}'d0; data_in = {data_lit}; tick;
        we_n = 1;
        addr = {addr_w}'d0; #1;
        if ({out_name} !== {inv_op}{data_lit}) errors++;
        if (errors != 0) $fatal(1, "tb_{module}: %0d errors", errors);
        $display("PASS: tb_{module}");
        $finish;
    end
endmodule
"""

    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")
    print(f"generated {module} ({words}x{bits}{', inverted' if inverted_out else ''})")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("words", type=int)
    ap.add_argument("bits", type=int)
    ap.add_argument("--inverted", action="store_true")
    ap.add_argument("--description", default="")
    args = ap.parse_args()
    emit(args.part, args.words, args.bits, args.inverted, args.description or f"{args.words}x{args.bits} RAM")

if __name__ == "__main__":
    main()
