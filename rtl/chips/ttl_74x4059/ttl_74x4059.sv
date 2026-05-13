// ttl_74x4059 - Programmable divide-by-N counter.
// Behavioral model: down-counter preloaded from `n` whenever a terminal-count
// pulse is generated.  `out` pulses high for one clock cycle each time the
// counter reaches zero.  `n = 0` is treated as divide-by-1 (continuous pulse).
// The CD4059's 4-BCD-digit programming format is not modeled here — instead
// the divider is a simple 14-bit binary preload.
module ttl_74x4059 (
    input  logic        clk,
    input  logic        rst,
    input  logic [13:0] n,        // divisor (1..16383)
    output logic        out
);
    logic [13:0] cnt;

    always_ff @(posedge clk or posedge rst) begin
        if (rst)               cnt <= 14'd0;
        else if (cnt == 14'd0) cnt <= (n == 14'd0) ? 14'd0 : (n - 14'd1);
        else                   cnt <= cnt - 14'd1;
    end

    assign out = (cnt == 14'd0);
endmodule
