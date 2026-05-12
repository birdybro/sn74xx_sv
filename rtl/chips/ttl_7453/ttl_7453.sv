// =============================================================================
// ttl_7453 - 2-2-2-2-input AND-OR-Invert gate, expandable
//
// y = ~((a1 & b1) | (a2 & b2) | (a3 & b3) | (a4 & b4))
// Expander pin omitted.
// =============================================================================

module ttl_7453 (
    input  logic a1, b1,
    input  logic a2, b2,
    input  logic a3, b3,
    input  logic a4, b4,
    output logic y
);
    assign y = ~((a1 & b1) | (a2 & b2) | (a3 & b3) | (a4 & b4));
endmodule
