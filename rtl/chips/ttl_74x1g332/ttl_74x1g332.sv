// ttl_74x1g332 - Single 3-input OR gate.
module ttl_74x1g332 (
    input  logic a, b, c,
    output logic y
);
    assign y = a | b | c;
endmodule
