// ttl_74x1t04 - Single-supply inverter.
module ttl_74x1t04 (
    input  logic [0:0] a,
    output logic [0:0] y
);
    assign y[0] = ~a[0];
endmodule
