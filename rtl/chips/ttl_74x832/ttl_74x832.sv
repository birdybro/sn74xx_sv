// ttl_74x832 - hex 2-input OR drivers.
module ttl_74x832 (
    input  logic [5:0] a,
    input  logic [5:0] b,
    output logic [5:0] y
);
    assign y = a | b;
endmodule
