// ttl_74x519 - 8-bit identity comparator, active-high p_eq_q.
module ttl_74x519 (
    input  logic [7:0] p, q,
    input  logic       g_n,
    output logic       p_eq_q
);
    assign p_eq_q = !g_n && (p == q);
endmodule
