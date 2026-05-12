// ttl_74x423 - Dual retriggerable monostable multivibrator (same as 74x123).
module ttl_74x423 #(parameter int PULSE_CYCLES = 8)
(
    input  logic [1:0] clk,
    input  logic [1:0] clr_n,
    input  logic [1:0] a_n,
    input  logic [1:0] b,
    output logic [1:0] q,
    output logic [1:0] q_n
);
    logic [1:0] trigger, trigger_prev;
    logic [31:0] cnt0, cnt1;
    assign trigger[0] = ~a_n[0] | b[0];
    assign trigger[1] = ~a_n[1] | b[1];
    always_ff @(posedge clk[0] or negedge clr_n[0]) begin
        if (!clr_n[0]) begin cnt0 <= 0; trigger_prev[0] <= 0; end
        else begin
            trigger_prev[0] <= trigger[0];
            if (trigger[0] && !trigger_prev[0]) cnt0 <= PULSE_CYCLES;
            else if (cnt0 != 0) cnt0 <= cnt0 - 1;
        end
    end
    always_ff @(posedge clk[1] or negedge clr_n[1]) begin
        if (!clr_n[1]) begin cnt1 <= 0; trigger_prev[1] <= 0; end
        else begin
            trigger_prev[1] <= trigger[1];
            if (trigger[1] && !trigger_prev[1]) cnt1 <= PULSE_CYCLES;
            else if (cnt1 != 0) cnt1 <= cnt1 - 1;
        end
    end
    assign q[0] = (cnt0 != 0);
    assign q[1] = (cnt1 != 0);
    assign q_n = ~q;
endmodule
