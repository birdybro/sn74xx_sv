// ttl_74x8373 - Octal D-type latch with JTAG port (= 74x373).
// JTAG port not modeled.
module ttl_74x8373 (
    input  logic       le, oe_n,
    input  logic [7:0] d,
    output logic [7:0] q,
    output logic       hiz
);
    logic [7:0] r;
    always_latch if (le) r = d;
    assign q   = oe_n ? 8'b0 : r;
    assign hiz = oe_n;
endmodule
