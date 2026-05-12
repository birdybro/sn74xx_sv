// ttl_74131 - Quad 2-input AND gate (vendor variant of 74x08).
module ttl_74131 (
    input  logic [3:0] a, b,
    output logic [3:0] y
);
    assign y = a & b;
endmodule
