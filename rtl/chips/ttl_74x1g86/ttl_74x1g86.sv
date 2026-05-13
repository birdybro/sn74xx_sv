// ttl_74x1g86 - Single 2-input XOR gate.
module ttl_74x1g86 (
    input  logic a, b,
    output logic y
);
    assign y = a ^ b;
endmodule
