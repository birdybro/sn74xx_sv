// ttl_74als903 - Quad 2-input NAND gate (OC driver, SN74ALS903).
module ttl_74als903 (
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] y
);
    assign y = ~(a & b);
endmodule
