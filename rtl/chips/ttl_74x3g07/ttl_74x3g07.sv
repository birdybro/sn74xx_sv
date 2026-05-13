// ttl_74x3g07 - Triple buffer gate (open-drain).
module ttl_74x3g07 (
    input  logic [2:0] a,
    output logic [2:0] y
);
    assign y[0] = a[0];
    assign y[1] = a[1];
    assign y[2] = a[2];
endmodule
