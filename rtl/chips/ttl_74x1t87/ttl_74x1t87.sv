// ttl_74x1t87 - Single-supply 2-input XNOR gate.
module ttl_74x1t87 (
    input  logic [0:0] a, b,
    output logic [0:0] y
);
    assign y[0] = ~(a[0] ^ b[0]);
endmodule
