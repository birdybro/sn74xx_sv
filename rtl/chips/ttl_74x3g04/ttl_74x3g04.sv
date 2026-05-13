// ttl_74x3g04 - Triple inverter gate.
module ttl_74x3g04 (
    input  logic [2:0] a,
    output logic [2:0] y
);
    assign y[0] = ~a[0];
    assign y[1] = ~a[1];
    assign y[2] = ~a[2];
endmodule
