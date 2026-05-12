// ttl_74424 - Dual VCO (digital approximation).
module ttl_74424 (
    input  logic [1:0] clk_in,
    output logic [1:0] clk_out
);
    assign clk_out = clk_in;
endmodule
