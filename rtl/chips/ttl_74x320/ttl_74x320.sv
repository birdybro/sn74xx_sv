// ttl_74x320 - Crystal-controlled oscillator (digital approximation).
// The original chip with an external crystal forms an oscillator.
// The RTL is a buffer; if used as a clock source feed the FPGA's MMCM/PLL.
module ttl_74x320 (
    input  logic clk_in,
    output logic clk_out
);
    assign clk_out = clk_in;
endmodule
