// =============================================================================
// ttl_74x31 - Hex delay elements (digital-only approximation)
//
// Real chip: six independent buffers with specific propagation delays
// (two 6 ns elements, two 23-32 ns, two 45-48 ns). These are *analog*
// delays driven by silicon propagation time — not modelable in RTL.
//
// This implementation passes the input straight through. If you need
// pipeline stages, instantiate registers explicitly at the next level of
// hierarchy.
//
// Marked digital_only_approximation in build/chips.json.
// =============================================================================

module ttl_74x31 (
    input  logic [5:0] a,
    output logic [5:0] y
);
    assign y = a;
endmodule
