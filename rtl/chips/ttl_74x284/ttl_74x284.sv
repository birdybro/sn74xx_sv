// ttl_74x284 - 4x4 multiplier, high-order 4 bits of product.
module ttl_74x284 (
    input  logic [3:0] a, b,
    output logic [3:0] y_hi
);
    logic [7:0] prod;
    assign prod = a * b;
    assign y_hi = prod[7:4];
endmodule
