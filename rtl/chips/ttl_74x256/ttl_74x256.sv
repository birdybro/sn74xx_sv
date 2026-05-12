// ttl_74x256 - Dual 4-bit addressable latch.
// Two 4-bit latches; each bit individually addressable via a[1:0] and gated
// by enable g_n. Async clear.
module ttl_74x256 (
    input  logic       g_n,
    input  logic       clr_n,
    input  logic [1:0] a,
    input  logic [1:0] d,
    output logic [7:0] q
);
    logic [7:0] latch_q;
    always_latch begin
        if (!clr_n) latch_q = 8'h00;
        else if (!g_n) begin
            latch_q[{1'b0, a}] = d[0];
            latch_q[{1'b1, a}] = d[1];
        end
    end
    assign q = latch_q;
endmodule
