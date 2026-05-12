// ttl_74x28 - Quad 2-input NOR buffer/driver (N=30 fanout).
// Same logic as 74x02; higher drive not modeled.
module ttl_74x28 (
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] y
);
    assign y = ~(a | b);
endmodule
