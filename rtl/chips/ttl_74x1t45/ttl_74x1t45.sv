// ttl_74x1t45 - Dual-supply 1-bit bus transceiver (= 74x245 width=1).
module ttl_74x1t45 (
    input  logic oe_n, dir,
    input  logic a_in, b_in,
    output logic a_out, b_out,
    output logic a_hiz, b_hiz
);
    assign b_out = (!oe_n &&  dir) ? a_in : 1'b0;
    assign a_out = (!oe_n && !dir) ? b_in : 1'b0;
    assign b_hiz = oe_n || !dir;
    assign a_hiz = oe_n ||  dir;
endmodule
