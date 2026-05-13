// ttl_74x2g241 - Dual bus buffer, one active-low enable + one active-high enable.
module ttl_74x2g241 (
    input  logic oe_n, oe,
    input  logic a0, a1,
    output logic y0, y1,
    output logic hiz0, hiz1
);
    assign y0   = oe_n ? 1'b0 : a0;
    assign y1   = oe   ? a1   : 1'b0;
    assign hiz0 = oe_n;
    assign hiz1 = ~oe;
endmodule
