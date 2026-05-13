// ttl_74x1g17 - Single buffer gate (3-state).
module ttl_74x1g17 (
    input  logic a, oe_n,
    output logic y,
    output logic hiz
);
    assign y   = oe_n ? 1'b0 : a;
    assign hiz = oe_n;
endmodule
