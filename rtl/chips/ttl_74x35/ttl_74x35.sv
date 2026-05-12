// ttl_74x35 - Hex non-inverting buffer, open-collector.
// Same logic as 74x34. OC physics not modeled.
module ttl_74x35 (
    input  logic [5:0] a,
    output logic [5:0] y
);
    assign y = a;
endmodule
