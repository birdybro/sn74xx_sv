// =============================================================================
// ttl_74x55 - 4-4-input AND-OR-Invert gate
//
// y = ~((a1 & b1 & c1 & d1) | (a2 & b2 & c2 & d2))
//
// 74H55 is expandable; that variant's expander pin is omitted.
// =============================================================================

module ttl_74x55 (
    input  logic a1, b1, c1, d1,
    input  logic a2, b2, c2, d2,
    output logic y
);
    assign y = ~((a1 & b1 & c1 & d1) | (a2 & b2 & c2 & d2));
endmodule
