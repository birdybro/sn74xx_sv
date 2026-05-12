// ttl_74x133 - Single 13-input NAND gate.
// y = ~(&a)
module ttl_74x133 (
    input  logic [12:0] a,
    output logic        y
);
    assign y = ~(&a);
endmodule
