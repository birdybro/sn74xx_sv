// ttl_74x1g00 - Single 2-input NAND gate.
module ttl_74x1g00 (
    input  logic a, b,
    output logic y
);
    assign y = ~(a & b);
endmodule
