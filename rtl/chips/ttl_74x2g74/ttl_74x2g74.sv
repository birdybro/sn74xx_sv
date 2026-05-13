// ttl_74x2g74 - Single positive-edge D flip-flop with async preset/clear.
// (Despite the "2G" prefix, the part is documented as a single FF.)
module ttl_74x2g74 (
    input  logic clk, pre_n, clr_n, d,
    output logic q, q_n
);
    logic r;
    always_ff @(posedge clk or negedge clr_n or negedge pre_n) begin
        if (!clr_n)      r <= 0;
        else if (!pre_n) r <= 1;
        else             r <= d;
    end
    assign q   = r;
    assign q_n = ~r;
endmodule
