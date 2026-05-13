// ttl_74x1g80 - Single positive-edge D flip-flop, /Q output only.
module ttl_74x1g80 (
    input  logic clk, d,
    output logic q_n
);
    logic r;
    always_ff @(posedge clk) r <= d;
    assign q_n = ~r;
endmodule
