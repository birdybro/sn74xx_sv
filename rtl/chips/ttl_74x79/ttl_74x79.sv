// ttl_74x79 - Dual D positive-edge FF, async preset and clear.
// Same as 74x74 but Wikipedia/some-vendor variant; identical logic.
module ttl_74x79 (
    input  logic [1:0] clk,
    input  logic [1:0] d,
    input  logic [1:0] clr_n,
    input  logic [1:0] pre_n,
    output logic [1:0] q,
    output logic [1:0] q_n
);
    always_ff @(posedge clk[0] or negedge clr_n[0] or negedge pre_n[0]) begin
        if (!pre_n[0])      q[0] <= 1'b1;
        else if (!clr_n[0]) q[0] <= 1'b0;
        else                q[0] <= d[0];
    end
    always_ff @(posedge clk[1] or negedge clr_n[1] or negedge pre_n[1]) begin
        if (!pre_n[1])      q[1] <= 1'b1;
        else if (!clr_n[1]) q[1] <= 1'b0;
        else                q[1] <= d[1];
    end
    assign q_n = ~q;
endmodule
