// ttl_74x1g10 - Single 3-input NAND gate.
module ttl_74x1g10 (
    input  logic a, b, c,
    output logic y
);
    assign y = ~(a & b & c);
endmodule
