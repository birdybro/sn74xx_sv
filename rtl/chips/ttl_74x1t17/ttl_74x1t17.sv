// ttl_74x1t17 - Single-supply Schmitt-trigger buffer.
module ttl_74x1t17 (
    input  logic [0:0] a,
    output logic [0:0] y
);
    assign y[0] = a[0];
endmodule
