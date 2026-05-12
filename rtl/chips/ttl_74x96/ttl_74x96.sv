// ttl_74x96 - 5-bit parallel-in / parallel-out shift register, async preset.
// Each posedge: shift right with din serial input.
// Async preset: when pre is high, q is OR-loaded with pre_d (set bits go to 1).
module ttl_74x96 (
    input  logic       clk,
    input  logic       clr_n,
    input  logic       pre,
    input  logic [4:0] pre_d,
    input  logic       din,
    output logic [4:0] q
);
    always_ff @(posedge clk or negedge clr_n or posedge pre) begin
        if (!clr_n)  q <= 5'b00000;
        else if (pre) q <= q | pre_d;   // OR-load (set selected bits)
        else          q <= {din, q[4:1]};
    end
endmodule
