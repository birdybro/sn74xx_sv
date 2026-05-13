// ttl_74x1g126 - Single bus buffer, active-high enable.
module ttl_74x1g126 (
    input  logic a, oe,
    output logic y,
    output logic hiz
);
    assign y   = oe ? a : 1'b0;
    assign hiz = ~oe;
endmodule
