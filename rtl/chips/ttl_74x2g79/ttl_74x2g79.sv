// ttl_74x2g79 - Dual positive-edge D flip-flop, Q output.
module ttl_74x2g79 (
    input  logic [1:0] clk, d,
    output logic [1:0] q
);
    always_ff @(posedge clk[0]) q[0] <= d[0];
    always_ff @(posedge clk[1]) q[1] <= d[1];
endmodule
