// ttl_74x324 - VCO with enable (digital approximation).
module ttl_74x324 (
    input  logic enable_n,
    input  logic clk_in,
    output logic clk_out,
    output logic clk_out_n
);
    assign clk_out   = enable_n ? 1'b0 :  clk_in;
    assign clk_out_n = enable_n ? 1'b1 : ~clk_in;
endmodule
