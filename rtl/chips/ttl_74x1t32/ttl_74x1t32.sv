// ttl_74x1t32 - Single-supply 2-input OR gate.
module ttl_74x1t32 (
    input  logic [0:0] a, b,
    output logic [0:0] y
);
    assign y[0] = a[0] | b[0];
endmodule
