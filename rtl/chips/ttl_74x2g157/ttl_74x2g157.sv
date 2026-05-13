// ttl_74x2g157 - Single 2-to-1 data selector / multiplexer (= 74x1g157).
module ttl_74x2g157 (
    input  logic a, b, sel,
    output logic y
);
    assign y = sel ? b : a;
endmodule
