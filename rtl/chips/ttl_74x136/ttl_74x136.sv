// ttl_74x136 - Quad 2-input XOR gate, open-collector.
// Same logic as 74x86; OC physics not modeled.
module ttl_74x136 (
    input  logic [3:0] a, b,
    output logic [3:0] y
);
    assign y = a ^ b;
endmodule
