// ttl_74x1g18 - Single 1-of-2 demultiplexer.
// Routes input `a` to y0 when sel=0 and to y1 when sel=1; the inactive output
// drives 0.
module ttl_74x1g18 (
    input  logic a, sel,
    output logic y0, y1
);
    assign y0 = ~sel & a;
    assign y1 =  sel & a;
endmodule
