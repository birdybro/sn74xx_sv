// ttl_74x261 - 2-bit x 4-bit parallel binary multiplier.
// Output is 6-bit: y = a * b.
module ttl_74x261 (
    input  logic [1:0] a,
    input  logic [3:0] b,
    output logic [5:0] y
);
    assign y = 6'(a * b);
endmodule
