#!/usr/bin/env python3
"""Generate a synchronous FIFO chip module + README + testbench.

Usage:
    python3 scripts/gen_fifo.py 74x222 16 4 --description "64-bit FIFO (16x4)"
"""
from __future__ import annotations
import argparse
import math
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

def emit(part: str, depth: int, width: int, description: str):
    module = f"ttl_{part.lower()}"
    ptr_w = max(1, math.ceil(math.log2(depth)))
    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir  = REPO / "tb"  / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    rtl = f"""// {module} - {description}
// Synchronous FIFO, {depth}-word x {width}-bit.
module {module} (
    input  logic              clk,
    input  logic              clr_n,
    input  logic              we,
    input  logic              re,
    input  logic [{width-1}:0]      din,
    output logic [{width-1}:0]      dout,
    output logic              full,
    output logic              empty
);
    logic [{width-1}:0] mem [0:{depth-1}];
    logic [{ptr_w}:0] wr_ptr, rd_ptr;

    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
        end else begin
            if (we && !full)  begin mem[wr_ptr[{ptr_w-1}:0]] <= din; wr_ptr <= wr_ptr + 1; end
            if (re && !empty) rd_ptr <= rd_ptr + 1;
        end
    end

    assign dout  = mem[rd_ptr[{ptr_w-1}:0]];
    assign empty = (wr_ptr == rd_ptr);
    assign full  = (wr_ptr - rd_ptr) == {depth};
endmodule
"""

    readme = f"""# {module} — {description}

{depth}-word x {width}-bit synchronous FIFO. Posedge-clocked write
(`we`) and read (`re`). Async active-low clear. `full` and `empty`
flags.

Writes when full and reads when empty are ignored. This is an FPGA-
synthesis-friendly behavioral model — the original chip's async write/
read timing details are not preserved.
"""

    tb = f"""`timescale 1ns/1ps
module tb_{module};
    logic clk, clr_n, we, re;
    logic [{width-1}:0] din, dout;
    logic full, empty;
    {module} dut(.clk(clk), .clr_n(clr_n), .we(we), .re(re), .din(din), .dout(dout), .full(full), .empty(empty));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=0; we=0; re=0; din=0; tick;
        if (!empty) errors++;
        clr_n=1;
        // Write some values
        we=1;
        for (int i = 0; i < 4; i++) begin din = {width}'(i + 1); tick; end
        we=0;
        if (empty) errors++;
        // Read back
        re=1;
        for (int i = 0; i < 4; i++) begin
            if (dout !== {width}'(i + 1)) errors++;
            tick;
        end
        re=0;
        if (!empty) errors++;
        if (errors != 0) $fatal(1, "tb_{module}: %0d errors", errors);
        $display("PASS: tb_{module}");
        $finish;
    end
endmodule
"""

    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")
    print(f"generated {module} ({depth}x{width} FIFO)")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("depth", type=int)
    ap.add_argument("width", type=int)
    ap.add_argument("--description", default="")
    args = ap.parse_args()
    emit(args.part, args.depth, args.width, args.description or f"{args.depth}x{args.width} FIFO")

if __name__ == "__main__":
    main()
