// ttl_74x1t34 - Dual-supply unidirectional buffer/driver.
module ttl_74x1t34 (
    input  logic [0:0] a,
    output logic [0:0] y
);
    assign y[0] = a[0];
endmodule
