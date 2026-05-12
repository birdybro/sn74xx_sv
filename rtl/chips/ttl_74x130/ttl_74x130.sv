// ttl_74x130 - Retriggerable monostable multivibrator (single, digital approx).
// Like 74x122 single-channel variant.
module ttl_74x130 #(parameter int PULSE_CYCLES = 8)
(
    input  logic clk,
    input  logic clr_n,
    input  logic a_n,
    input  logic b,
    output logic q,
    output logic q_n
);
    logic trigger, trigger_prev;
    logic [31:0] cnt;
    assign trigger = ~a_n | b;
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n) begin cnt <= 0; trigger_prev <= 0; end
        else begin
            trigger_prev <= trigger;
            if (trigger && !trigger_prev) cnt <= PULSE_CYCLES;
            else if (cnt != 0) cnt <= cnt - 1;
        end
    end
    assign q   = (cnt != 0);
    assign q_n = ~q;
endmodule
