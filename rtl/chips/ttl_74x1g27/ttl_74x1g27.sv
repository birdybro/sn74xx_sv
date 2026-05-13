// ttl_74x1g27 - Single 3-input NOR gate.
module ttl_74x1g27 (
    input  logic a, b, c,
    output logic y
);
    assign y = ~(a | b | c);
endmodule
