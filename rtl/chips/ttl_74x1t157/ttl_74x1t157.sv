// ttl_74x1t157 - Single-supply 2-input multiplexer with Schmitt input.
module ttl_74x1t157 (
    input  logic a, b, sel,
    output logic y
);
    assign y = sel ? b : a;
endmodule
