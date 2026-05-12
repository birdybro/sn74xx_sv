// ttl_74x134 - Single 12-input NAND gate with 3-state output.
// y = (oe_n) ? 0 : ~(&a)
module ttl_74x134 (
    input  logic [11:0] a,
    input  logic        oe_n,
    output logic        y
);
    assign y = oe_n ? 1'b0 : ~(&a);
endmodule
