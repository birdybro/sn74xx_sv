// ttl_74x383 - 8-bit register.
module ttl_74x383 (
    input  logic       clk,
    input  logic [7:0] d,
    output logic [7:0] q
);
    always_ff @(posedge clk) q <= d;
endmodule
