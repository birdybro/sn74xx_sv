// ttl_74x126 - Quad bus buffer, positive enable, 3-state outputs.
// y[i] = oe[i] ? a[i] : 0
module ttl_74x126 (
    input  logic [3:0] a,
    input  logic [3:0] oe,
    output logic [3:0] y
);
    always_comb begin
        for (int i = 0; i < 4; i++) y[i] = oe[i] ? a[i] : 1'b0;
    end
endmodule
