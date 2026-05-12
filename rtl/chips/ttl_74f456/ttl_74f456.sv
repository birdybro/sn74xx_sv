// ttl_74f456 - Octal buffer/line driver with parity, non-inverting.
module ttl_74f456 (
    input  logic [7:0] a,
    input  logic       oe_n,
    output logic [7:0] y,
    output logic       par
);
    assign y   = oe_n ? 8'h00 : a;
    assign par = ^a;
endmodule
