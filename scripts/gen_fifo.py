#!/usr/bin/env python3
"""Generate a synchronous FIFO chip module + README + testbench.

Usage:
    python3 scripts/gen_fifo.py 74x222 16 4 --description "64-bit FIFO (16x4)"
    python3 scripts/gen_fifo.py 74x2235 1024 9 --bidir --description "..."
"""
from __future__ import annotations
import argparse
import math
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent

def emit_unidir(part: str, depth: int, width: int, description: str):
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


def emit_bidir(part: str, depth: int, width: int, description: str):
    module = f"ttl_{part.lower()}"
    aw = max(1, math.ceil(math.log2(depth)))
    rtl_dir = REPO / "rtl" / "chips" / module
    tb_dir  = REPO / "tb"  / "chips" / module
    rtl_dir.mkdir(parents=True, exist_ok=True)
    tb_dir.mkdir(parents=True, exist_ok=True)

    rtl = f"""// {module} - {description}
// Bidirectional FIFO: two independent {depth}-deep x {width}-bit queues
// (A->B and B->A) sharing a common reset.  Same structure as ttl_74x2235.
module {module} (
    input  logic        rst_n,
    input  logic        wclk_ab, wr_n_ab,
    input  logic [{width-1}:0] din_ab,
    input  logic        rclk_ab, rd_n_ab,
    output logic [{width-1}:0] dout_ab,
    output logic        ef_n_ab, ff_n_ab,
    input  logic        wclk_ba, wr_n_ba,
    input  logic [{width-1}:0] din_ba,
    input  logic        rclk_ba, rd_n_ba,
    output logic [{width-1}:0] dout_ba,
    output logic        ef_n_ba, ff_n_ba
);
    localparam int DEPTH = {depth};
    localparam int AW    = {aw};

    logic [{width-1}:0]  mem_ab [0:DEPTH-1];
    logic [AW:0] wp_ab, rp_ab;
    logic [{width-1}:0]  mem_ba [0:DEPTH-1];
    logic [AW:0] wp_ba, rp_ba;

    wire empty_ab = (wp_ab == rp_ab);
    wire full_ab  = ((wp_ab - rp_ab) == (AW+1)'(DEPTH));
    wire empty_ba = (wp_ba == rp_ba);
    wire full_ba  = ((wp_ba - rp_ba) == (AW+1)'(DEPTH));

    always_ff @(posedge wclk_ab or negedge rst_n)
        if (!rst_n) wp_ab <= '0;
        else if (!wr_n_ab && !full_ab) begin
            mem_ab[wp_ab[AW-1:0]] <= din_ab;
            wp_ab <= wp_ab + 1;
        end
    always_ff @(posedge rclk_ab or negedge rst_n)
        if (!rst_n) rp_ab <= '0;
        else if (!rd_n_ab && !empty_ab) rp_ab <= rp_ab + 1;
    always_ff @(posedge wclk_ba or negedge rst_n)
        if (!rst_n) wp_ba <= '0;
        else if (!wr_n_ba && !full_ba) begin
            mem_ba[wp_ba[AW-1:0]] <= din_ba;
            wp_ba <= wp_ba + 1;
        end
    always_ff @(posedge rclk_ba or negedge rst_n)
        if (!rst_n) rp_ba <= '0;
        else if (!rd_n_ba && !empty_ba) rp_ba <= rp_ba + 1;

    assign dout_ab = mem_ab[rp_ab[AW-1:0]];
    assign dout_ba = mem_ba[rp_ba[AW-1:0]];
    assign ef_n_ab = ~empty_ab;
    assign ff_n_ab = ~full_ab;
    assign ef_n_ba = ~empty_ba;
    assign ff_n_ba = ~full_ba;
endmodule
"""

    readme = f"""# {module} — {description}

Bidirectional FIFO: two independent {depth}-deep x {width}-bit queues
(A→B and B→A) sharing a common reset.  Same structure as
[ttl_74x2235](../ttl_74x2235/README.md).
"""

    tb = f"""`timescale 1ns/1ps
module tb_{module};
    logic rst_n;
    logic wclk_ab, wr_n_ab, rclk_ab, rd_n_ab;
    logic wclk_ba, wr_n_ba, rclk_ba, rd_n_ba;
    logic [{width-1}:0] din_ab, dout_ab, din_ba, dout_ba;
    logic ef_n_ab, ff_n_ab, ef_n_ba, ff_n_ba;
    {module} dut(.*);
    int errors;
    initial begin
        errors = 0;
        wclk_ab = 0; rclk_ab = 0; wr_n_ab = 1; rd_n_ab = 1; din_ab = 0;
        wclk_ba = 0; rclk_ba = 0; wr_n_ba = 1; rd_n_ba = 1; din_ba = 0;
        rst_n = 1; #1; rst_n = 0; #1; rst_n = 1; #1;
        if (ef_n_ab !== 0) errors++;
        din_ab = {width}'d17; wr_n_ab = 0;
        #1; wclk_ab = 1; #1; wclk_ab = 0; wr_n_ab = 1; #1;
        if (dout_ab !== {width}'d17) errors++;
        if (errors != 0) $fatal(1, "tb_{module}: %0d errors", errors);
        $display("PASS: tb_{module}");
        $finish;
    end
endmodule
"""

    (rtl_dir / f"{module}.sv").write_text(rtl, encoding="utf-8")
    (rtl_dir / "README.md").write_text(readme, encoding="utf-8")
    (tb_dir / f"tb_{module}.sv").write_text(tb, encoding="utf-8")
    print(f"generated {module} (bidir 2x{depth}x{width} FIFO)")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("part")
    ap.add_argument("depth", type=int)
    ap.add_argument("width", type=int)
    ap.add_argument("--description", default="")
    ap.add_argument("--bidir", action="store_true", help="Bidirectional (2x depth x width)")
    args = ap.parse_args()
    desc = args.description or f"{args.depth}x{args.width} FIFO"
    if args.bidir:
        emit_bidir(args.part, args.depth, args.width, desc)
    else:
        emit_unidir(args.part, args.depth, args.width, desc)

if __name__ == "__main__":
    main()
