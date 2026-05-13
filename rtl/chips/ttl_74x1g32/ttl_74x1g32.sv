// ttl_74x1g32 - Single 2-input OR gate.
module ttl_74x1g32 (
    input  logic a, b,
    output logic y
);
    assign y = a | b;
endmodule
