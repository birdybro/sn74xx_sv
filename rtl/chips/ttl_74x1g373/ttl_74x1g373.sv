// ttl_74x1g373 - Single D-type transparent latch with active-low output enable.
module ttl_74x1g373 (
    input  logic d, le, oe_n,
    output logic q,
    output logic hiz
);
    logic r;
    always_latch if (le) r = d;
    assign q   = oe_n ? 1'b0 : r;
    assign hiz = oe_n;
endmodule
