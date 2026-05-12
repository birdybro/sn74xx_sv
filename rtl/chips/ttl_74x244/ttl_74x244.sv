// =============================================================================
// ttl_74x244 - Octal buffer / line driver, 3-state outputs, non-inverting
//
// Two banks of 4 buffers, each with its own active-low output enable.
//
// y[3:0] = oe1_n ? 4'h0 : a[3:0]      (bank 1)
// y[7:4] = oe2_n ? 4'h0 : a[7:4]      (bank 2)
//
// Per project convention (docs/conventions.md), three-state outputs are
// represented as muxed-zero for FPGA-internal use. The oe1_n / oe2_n ports
// are preserved so the module can drive real tri-state pads at the top
// of a design.
// =============================================================================

module ttl_74x244 (
    input  logic [7:0] a,
    input  logic       oe1_n,
    input  logic       oe2_n,
    output logic [7:0] y
);
    assign y[3:0] = oe1_n ? 4'h0 : a[3:0];
    assign y[7:4] = oe2_n ? 4'h0 : a[7:4];
endmodule
