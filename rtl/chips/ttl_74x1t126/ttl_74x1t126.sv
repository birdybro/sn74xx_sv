// ttl_74x1t126 - Single-supply single buffer/driver with 3-state output.
module ttl_74x1t126 (
    input  logic a, oe,
    output logic y,
    output logic hiz
);
    assign y   = oe ? a : 1'b0;
    assign hiz = ~oe;
endmodule
