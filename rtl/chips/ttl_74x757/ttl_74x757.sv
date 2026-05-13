// ttl_74x757 - octal buffer/line driver, non-inverting, complementary enables (OC).
// Logically identical to 74x241; OC drive style not modeled.
module ttl_74x757 (
    input  logic [7:0] a,
    input  logic       oe1_n,
    input  logic       oe2,
    output logic [7:0] y
);
    assign y[3:0] = oe1_n ? 4'h0 : a[3:0];
    assign y[7:4] = oe2   ? a[7:4] : 4'h0;
endmodule
