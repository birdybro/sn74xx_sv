// ttl_74als902 - Quad 2-input NOR gate (driver, SN74ALS902).
module ttl_74als902 (
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] y
);
    assign y = ~(a | b);
endmodule
