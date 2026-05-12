// ttl_74x259 - 8-bit bit-addressable input latch with clear.
module ttl_74x259 (
    input  logic       g_n,
    input  logic       clr_n,
    input  logic [2:0] a,
    input  logic       d,
    output logic [7:0] q
);
    logic [7:0] latch_q;
    always_latch begin
        if (!clr_n)        latch_q = 8'h00;
        else if (!g_n)     latch_q[a] = d;
    end
    assign q = latch_q;
endmodule
