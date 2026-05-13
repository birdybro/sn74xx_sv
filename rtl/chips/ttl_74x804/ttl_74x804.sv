// ttl_74x804 - hex 2-input NAND drivers.
module ttl_74x804 (
    input  logic [5:0] a,
    input  logic [5:0] b,
    output logic [5:0] y
);
    assign y = ~(a & b);
endmodule
