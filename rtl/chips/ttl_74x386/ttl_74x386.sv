// ttl_74x386 - Quad 2-input XOR gate (same as 74x86).
module ttl_74x386 (
    input  logic [3:0] a, b,
    output logic [3:0] y
);
    assign y = a ^ b;
endmodule
