// ttl_74x326 - Dual VCO with enable (digital approximation).
module ttl_74x326 (
    input  logic [1:0] enable_n,
    input  logic [1:0] clk_in,
    output logic [1:0] clk_out,
    output logic [1:0] clk_out_n
);
    assign clk_out[0]   = enable_n[0] ? 1'b0 :  clk_in[0];
    assign clk_out_n[0] = enable_n[0] ? 1'b1 : ~clk_in[0];
    assign clk_out[1]   = enable_n[1] ? 1'b0 :  clk_in[1];
    assign clk_out_n[1] = enable_n[1] ? 1'b1 : ~clk_in[1];
endmodule
