// ttl_74x1t158 - Single-supply 2-input multiplexer with inverting output.
module ttl_74x1t158 (
    input  logic a, b, sel,
    output logic y_n
);
    assign y_n = ~(sel ? b : a);
endmodule
