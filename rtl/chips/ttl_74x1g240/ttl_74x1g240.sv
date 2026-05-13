// ttl_74x1g240 - Single bus buffer with active-low enable (inverting).
module ttl_74x1g240 (
    input  logic a, oe_n,
    output logic y,
    output logic hiz
);
    assign y   = oe_n ? 1'b0 : ~a;
    assign hiz = oe_n;
endmodule
