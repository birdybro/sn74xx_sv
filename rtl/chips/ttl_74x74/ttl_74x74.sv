// =============================================================================
// ttl_74x74 - Dual D positive-edge-triggered flip-flop, async clear & preset
//
// Two independent D flip-flops. Each has:
//   - posedge-triggered D capture
//   - asynchronous active-low clear (clr_n)
//   - asynchronous active-low preset (pre_n)
//
// Truth table priority (matches datasheet "normal" operation):
//   pre_n=0          -> Q <- 1
//   pre_n=1, clr_n=0 -> Q <- 0
//   else, posedge clk -> Q <- D
//
// The datasheet shows that asserting both pre_n=0 and clr_n=0 forces both
// Q and Q_n high (unstable / invalid). We do not model that fight; instead
// the order above lets preset win. Don't drive both low simultaneously.
//
// Q_n is the inverse of Q at all times in this RTL.
//
// Datasheet: TI SN74LS74A.
// =============================================================================

module ttl_74x74 (
    input  logic [1:0] clk,
    input  logic [1:0] d,
    input  logic [1:0] clr_n,
    input  logic [1:0] pre_n,
    output logic [1:0] q,
    output logic [1:0] q_n
);

    // Flip-flop 0
    always_ff @(posedge clk[0] or negedge clr_n[0] or negedge pre_n[0]) begin
        if (!pre_n[0])      q[0] <= 1'b1;
        else if (!clr_n[0]) q[0] <= 1'b0;
        else                q[0] <= d[0];
    end

    // Flip-flop 1
    always_ff @(posedge clk[1] or negedge clr_n[1] or negedge pre_n[1]) begin
        if (!pre_n[1])      q[1] <= 1'b1;
        else if (!clr_n[1]) q[1] <= 1'b0;
        else                q[1] <= d[1];
    end

    assign q_n = ~q;

endmodule
