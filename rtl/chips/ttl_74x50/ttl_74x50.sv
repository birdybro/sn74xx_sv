// =============================================================================
// ttl_74x50 - Dual 2-2-input AND-OR-Invert gate, one gate expandable.
//
// y[i] = ~((a1[i] & b1[i]) | (a2[i] & b2[i]))    for i in 0..1
//
// The first gate has expander pins (omitted; not synthesizable internally).
// =============================================================================

module ttl_74x50 (
    input  logic [1:0] a1,
    input  logic [1:0] b1,
    input  logic [1:0] a2,
    input  logic [1:0] b2,
    output logic [1:0] y
);
    assign y = ~((a1 & b1) | (a2 & b2));
endmodule
