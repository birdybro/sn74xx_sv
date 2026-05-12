// ttl_74x279 - Quad set-reset latch (S/R, active low).
module ttl_74x279 (
    input  logic [3:0] s_n,
    input  logic [3:0] r_n,
    output logic [3:0] q
);
    logic [3:0] latch_q;
    always_latch begin
        if (!s_n[0] && r_n[0])      latch_q[0] = 1'b1;
        else if (s_n[0] && !r_n[0]) latch_q[0] = 1'b0;
        if (!s_n[1] && r_n[1])      latch_q[1] = 1'b1;
        else if (s_n[1] && !r_n[1]) latch_q[1] = 1'b0;
        if (!s_n[2] && r_n[2])      latch_q[2] = 1'b1;
        else if (s_n[2] && !r_n[2]) latch_q[2] = 1'b0;
        if (!s_n[3] && r_n[3])      latch_q[3] = 1'b1;
        else if (s_n[3] && !r_n[3]) latch_q[3] = 1'b0;
    end
    assign q = latch_q;
endmodule
