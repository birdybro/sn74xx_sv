// ttl_74x1t50 - Single-supply Schmitt-trigger buffer.
module ttl_74x1t50 (
    input  logic [0:0] a,
    output logic [0:0] y
);
    assign y[0] = a[0];
endmodule
