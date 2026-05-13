// ttl_74x8374 - Octal D-type flip-flop with JTAG port (= 74x374).
// JTAG port not modeled.
module ttl_74x8374 (
    input  logic       clk, oe_n,
    input  logic [7:0] d,
    output logic [7:0] q,
    output logic       hiz
);
    logic [7:0] r;
    always_ff @(posedge clk) r <= d;
    assign q   = oe_n ? 8'b0 : r;
    assign hiz = oe_n;
endmodule
