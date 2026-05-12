// ttl_74x325 - Dual VCO (digital approximation).
module ttl_74x325 (
    input  logic [1:0] clk_in,
    output logic [1:0] clk_out,
    output logic [1:0] clk_out_n
);
    assign clk_out   =  clk_in;
    assign clk_out_n = ~clk_in;
endmodule
