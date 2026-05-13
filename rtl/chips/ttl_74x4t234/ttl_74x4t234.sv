// ttl_74x4t234 - Dual-supply 4-bit bus transceiver.
module ttl_74x4t234 (
    input  logic        oe_n, dir,
    input  logic [3:0] a_in, b_in,
    output logic [3:0] a_out, b_out,
    output logic        a_hiz, b_hiz
);
    assign b_out = (!oe_n &&  dir) ? a_in : 4'b0;
    assign a_out = (!oe_n && !dir) ? b_in : 4'b0;
    assign b_hiz = oe_n || !dir;
    assign a_hiz = oe_n ||  dir;
endmodule
