// ttl_74fct3244 - dual 4-bit buffer / line driver (3-state).
// Functionally equivalent to 74x244: two independent 4-bit non-inverting
// buffers, each with an active-low output enable.
module ttl_74fct3244 (
    input  logic       oe1_n, oe2_n,
    input  logic [3:0] a1, a2,
    output logic [3:0] y1, y2,
    output logic       hiz1, hiz2
);
    assign y1   = oe1_n ? 4'b0 : a1;
    assign y2   = oe2_n ? 4'b0 : a2;
    assign hiz1 = oe1_n;
    assign hiz2 = oe2_n;
endmodule
