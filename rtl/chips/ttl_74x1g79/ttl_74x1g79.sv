// ttl_74x1g79 - Single positive-edge D flip-flop, Q output only.
module ttl_74x1g79 (
    input  logic clk, d,
    output logic q
);
    always_ff @(posedge clk) q <= d;
endmodule
