// ttl_74als1010 - Triple 3-input NAND gate (driver). High-drive variant of 74x10.
module ttl_74als1010 (
    input  logic [2:0] a, b, c,
    output logic [2:0] y
);
    assign y = ~(a & b & c);
endmodule
