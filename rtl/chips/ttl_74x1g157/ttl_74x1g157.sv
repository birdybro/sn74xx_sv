// ttl_74x1g157 - Single 2-to-1 multiplexer.
module ttl_74x1g157 (
    input  logic a, b, sel,
    output logic y
);
    assign y = sel ? b : a;
endmodule
