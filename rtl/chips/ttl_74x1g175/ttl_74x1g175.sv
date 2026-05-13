// ttl_74x1g175 - Single positive-edge D flip-flop with async clear, Q output.
module ttl_74x1g175 (
    input  logic clk, clr_n, d,
    output logic q
);
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n) q <= 0;
        else        q <= d;
    end
endmodule
