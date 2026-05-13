// ttl_74x1g38 - Single 2-input NAND gate (open-drain on physical part).
module ttl_74x1g38 (
    input  logic a, b,
    output logic y
);
    assign y = ~(a & b);
endmodule
