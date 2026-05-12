// ttl_74460 - 4-bit bus transfer switch.
module ttl_74460 (
    input  logic       oe_n,
    input  logic [3:0] a,
    output logic [3:0] y
);
    assign y = oe_n ? 4'h0 : a;
endmodule
