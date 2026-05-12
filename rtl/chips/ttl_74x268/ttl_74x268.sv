// ttl_74x268 - Hex D-type latches with shared enable and 3-state output control.
module ttl_74x268 (
    input  logic       le,
    input  logic       oe_n,
    input  logic [5:0] d,
    output logic [5:0] q
);
    logic [5:0] latch_q;
    always_latch begin
        if (le) latch_q = d;
    end
    assign q = oe_n ? 6'h00 : latch_q;
endmodule
