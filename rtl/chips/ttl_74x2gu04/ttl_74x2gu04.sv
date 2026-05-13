// ttl_74x2gu04 - Dual unbuffered inverter gate.
module ttl_74x2gu04 (
    input  logic [1:0] a,
    output logic [1:0] y
);
    assign y[0] = ~a[0];
    assign y[1] = ~a[1];
endmodule
