// ttl_74x1t125 - Single-supply single buffer/driver with 3-state output.
module ttl_74x1t125 (
    input  logic a, oe_n,
    output logic y,
    output logic hiz
);
    assign y   = oe_n ? 1'b0 : a;
    assign hiz = oe_n;
endmodule
