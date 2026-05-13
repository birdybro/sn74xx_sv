// ttl_74x2g06 - Dual inverter gate (open-drain).
module ttl_74x2g06 (
    input  logic [1:0] a,
    output logic [1:0] y
);
    assign y[0] = ~a[0];
    assign y[1] = ~a[1];
endmodule
