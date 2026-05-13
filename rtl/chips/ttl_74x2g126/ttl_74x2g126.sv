// ttl_74x2g126 - Dual bus buffer with active-high enable.
module ttl_74x2g126 (
    input  logic [1:0] oe,
    input  logic [1:0] a,
    output logic [1:0] y,
    output logic [1:0] hiz
);
    assign y[0] = oe[0] ? a[0] : 1'b0;
    assign y[1] = oe[1] ? a[1] : 1'b0;
    assign hiz = ~oe;
endmodule
