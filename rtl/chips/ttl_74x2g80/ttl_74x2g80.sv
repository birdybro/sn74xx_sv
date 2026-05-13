// ttl_74x2g80 - Dual positive-edge D flip-flop, /Q output.
module ttl_74x2g80 (
    input  logic [1:0] clk, d,
    output logic [1:0] q_n
);
    logic [1:0] r;
    always_ff @(posedge clk[0]) r[0] <= d[0];
    always_ff @(posedge clk[1]) r[1] <= d[1];
    assign q_n = ~r;
endmodule
