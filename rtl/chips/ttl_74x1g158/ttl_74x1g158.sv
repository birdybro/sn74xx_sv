// ttl_74x1g158 - Single 2-input multiplexer with active-low (inverting) output.
module ttl_74x1g158 (
    input  logic a, b, sel,
    output logic y_n
);
    assign y_n = ~(sel ? b : a);
endmodule
