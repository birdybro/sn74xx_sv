// ttl_74x1g125 - Single bus buffer, active-low enable.
module ttl_74x1g125 (
    input  logic a, oe_n,
    output logic y,
    output logic hiz
);
    assign y   = oe_n ? 1'b0 : a;
    assign hiz = oe_n;
endmodule
