// ttl_74x2g0604 - Dual inverter gate (one open-drain).
module ttl_74x2g0604 (
    input  logic [1:0] a,
    output logic [1:0] y
);
    assign y = ~a;
endmodule
