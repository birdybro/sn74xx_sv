// ttl_74x29 - Dual 4-input NOR gate.
// y[i] = ~(a[i] | b[i] | c[i] | d[i])
module ttl_74x29 (
    input  logic [1:0] a,
    input  logic [1:0] b,
    input  logic [1:0] c,
    input  logic [1:0] d,
    output logic [1:0] y
);
    assign y = ~(a | b | c | d);
endmodule
