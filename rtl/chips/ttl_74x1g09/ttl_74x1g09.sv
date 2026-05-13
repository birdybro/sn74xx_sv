// ttl_74x1g09 - Single 2-input AND gate (open-drain on physical part).
module ttl_74x1g09 (
    input  logic a, b,
    output logic y
);
    assign y = a & b;
endmodule
