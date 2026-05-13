// ttl_74x1g386 - Single 3-input XOR gate (3-bit even-parity generator).
module ttl_74x1g386 (
    input  logic a, b, c,
    output logic y
);
    assign y = a ^ b ^ c;
endmodule
