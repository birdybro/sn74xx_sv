// ttl_74x27 - Triple 3-input NOR gate.
// y[i] = ~(a[i] | b[i] | c[i])
module ttl_74x27 (
    input  logic [2:0] a,
    input  logic [2:0] b,
    input  logic [2:0] c,
    output logic [2:0] y
);
    assign y = ~(a | b | c);
endmodule
