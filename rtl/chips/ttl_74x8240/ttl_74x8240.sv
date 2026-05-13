// ttl_74x8240 - Octal inverting buffer with JTAG port (= 74x240).
// JTAG (IEEE 1149.1) boundary-scan logic is not modeled; this module
// exposes only the functional 74x240-equivalent buffer behavior.
module ttl_74x8240 (
    input  logic       oe1_n, oe2_n,
    input  logic [3:0] a1, a2,
    output logic [3:0] y1, y2,
    output logic       hiz1, hiz2
);
    assign y1   = oe1_n ? 4'b0 : ~a1;
    assign y2   = oe2_n ? 4'b0 : ~a2;
    assign hiz1 = oe1_n;
    assign hiz2 = oe2_n;
endmodule
