// ttl_74x30 - Single 8-input NAND gate.
// y = ~(&a)
module ttl_74x30 (
    input  logic [7:0] a,
    output logic       y
);
    assign y = ~(&a);
endmodule
