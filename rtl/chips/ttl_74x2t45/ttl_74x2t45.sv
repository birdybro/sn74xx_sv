// ttl_74x2t45 - Dual-supply 2-bit bus transceiver.
module ttl_74x2t45 (
    input  logic        oe_n, dir,
    input  logic [1:0] a_in, b_in,
    output logic [1:0] a_out, b_out,
    output logic        a_hiz, b_hiz
);
    assign b_out = (!oe_n &&  dir) ? a_in : 2'b0;
    assign a_out = (!oe_n && !dir) ? b_in : 2'b0;
    assign b_hiz = oe_n || !dir;
    assign a_hiz = oe_n ||  dir;
endmodule
