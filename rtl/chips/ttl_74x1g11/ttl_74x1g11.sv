// ttl_74x1g11 - Single 3-input AND gate.
module ttl_74x1g11 (
    input  logic a, b, c,
    output logic y
);
    assign y = a & b & c;
endmodule
