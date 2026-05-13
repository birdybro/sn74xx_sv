// ttl_74x1t14 - Single-supply Schmitt-trigger inverter.
module ttl_74x1t14 (
    input  logic [0:0] a,
    output logic [0:0] y
);
    assign y[0] = ~a[0];
endmodule
