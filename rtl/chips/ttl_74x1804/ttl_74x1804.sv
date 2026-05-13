// ttl_74x1804 - Hex 2-input NAND gate.
module ttl_74x1804 (
    input  logic [5:0] a,
    input  logic [5:0] b,
    output logic [5:0] y
);
    assign y = ~(a & b);
endmodule
