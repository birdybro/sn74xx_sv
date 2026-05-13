// ttl_74x3g17 - Triple buffer gate (3-state).
module ttl_74x3g17 (
    input  logic [2:0] oe_n,
    input  logic [2:0] a,
    output logic [2:0] y,
    output logic [2:0] hiz
);
    assign y[0] = oe_n[0] ? 1'b0 : a[0];
    assign y[1] = oe_n[1] ? 1'b0 : a[1];
    assign y[2] = oe_n[2] ? 1'b0 : a[2];
    assign hiz = oe_n;
endmodule
