// ttl_74x2g240 - Dual inverting bus buffer gate, active-low enable.
module ttl_74x2g240 (
    input  logic [1:0] oe_n,
    input  logic [1:0] a,
    output logic [1:0] y,
    output logic [1:0] hiz
);
    assign y[0] = oe_n[0] ? 1'b0 : ~a[0];
    assign y[1] = oe_n[1] ? 1'b0 : ~a[1];
    assign hiz = oe_n;
endmodule
