// ttl_74x1g02 - Single 2-input NOR gate.
module ttl_74x1g02 (
    input  logic a, b,
    output logic y
);
    assign y = ~(a | b);
endmodule
