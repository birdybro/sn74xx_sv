// ttl_74x1g374 - Single positive-edge D flip-flop with active-low output enable.
module ttl_74x1g374 (
    input  logic clk, d, oe_n,
    output logic q,
    output logic hiz
);
    logic r;
    always_ff @(posedge clk) r <= d;
    assign q   = oe_n ? 1'b0 : r;
    assign hiz = oe_n;
endmodule
