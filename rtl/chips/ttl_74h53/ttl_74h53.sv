// ttl_74h53 - 3-2-2-2 AOI, expandable.
// y = ~((a1&b1&c1) | (a2&b2) | (a3&b3) | (a4&b4))
// Expander pin omitted (not synthesizable).
module ttl_74h53 (
    input  logic a1, b1, c1,
    input  logic a2, b2,
    input  logic a3, b3,
    input  logic a4, b4,
    output logic y
);
    assign y = ~((a1 & b1 & c1) | (a2 & b2) | (a3 & b3) | (a4 & b4));
endmodule
