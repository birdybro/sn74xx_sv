// ttl_74x743 - octal line driver, non-inverting (OC).
// Logically identical to 74x244; OC drive style not modeled.
module ttl_74x743 (
    input  logic [7:0] a,
    input  logic       oe1_n, oe2_n,
    output logic [7:0] y
);
    assign y[3:0] = oe1_n ? 4'h0 : a[3:0];
    assign y[7:4] = oe2_n ? 4'h0 : a[7:4];
endmodule
