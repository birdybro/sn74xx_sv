// ttl_74x285 - 4x4 multiplier, low-order 4 bits of product.
module ttl_74x285 (
    input  logic [3:0] a, b,
    output logic [3:0] y_lo
);
    logic [7:0] prod;
    assign prod = a * b;
    assign y_lo = prod[3:0];
endmodule
