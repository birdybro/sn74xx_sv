// ttl_74x808 - hex 2-input AND drivers.
module ttl_74x808 (
    input  logic [5:0] a,
    input  logic [5:0] b,
    output logic [5:0] y
);
    assign y = a & b;
endmodule
