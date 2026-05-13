// ttl_74c903 - Hex inverting PMOS buffer (MM74C903). Same logic as 74x04.
module ttl_74c903 (
    input  logic [5:0] a,
    output logic [5:0] y
);
    assign y = ~a;
endmodule
