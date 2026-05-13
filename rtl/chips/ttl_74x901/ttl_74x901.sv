// ttl_74x901 - Hex inverting TTL buffer (MM74C901).
module ttl_74x901 (
    input  logic [5:0] a,
    output logic [5:0] y
);
    assign y = ~a;
endmodule
