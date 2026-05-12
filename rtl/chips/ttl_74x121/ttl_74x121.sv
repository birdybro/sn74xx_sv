// =============================================================================
// ttl_74x121 - Monostable multivibrator (digital approximation)
//
// The real chip produces an output pulse whose width is set by an external
// R-C network — purely analog. This RTL approximates it as a parameterized
// PULSE_CYCLES-long pulse synchronous to clk, triggered when the gated
// trigger goes from inactive to active.
//
// Trigger: a1_n=0 AND a2_n=0, OR b=1 (with normally-Schmitt input, ignored here).
// =============================================================================

module ttl_74x121 #(parameter int PULSE_CYCLES = 8)
(
    input  logic clk,
    input  logic a1_n,
    input  logic a2_n,
    input  logic b,
    output logic q,
    output logic q_n
);
    logic        trigger;
    logic        trigger_prev;
    logic [31:0] cnt;

    assign trigger = (~a1_n & ~a2_n) | b;

    always_ff @(posedge clk) begin
        trigger_prev <= trigger;
        if (trigger && !trigger_prev) begin
            cnt <= PULSE_CYCLES;
        end else if (cnt != 0) begin
            cnt <= cnt - 1;
        end
    end

    assign q   = (cnt != 0);
    assign q_n = ~q;
endmodule
