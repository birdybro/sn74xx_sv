// =============================================================================
// ttl_74x151 - 8-to-1 line multiplexer with enable, complementary outputs
//
// When g_n=0:  y = d[s], w = ~y
// When g_n=1:  y = 0,    w = 1
// =============================================================================

module ttl_74x151 (
    input  logic       g_n,
    input  logic [2:0] s,
    input  logic [7:0] d,
    output logic       y,
    output logic       w
);
    always_comb begin
        if (g_n) begin
            y = 1'b0;
            w = 1'b1;
        end else begin
            y = d[s];
            w = ~d[s];
        end
    end
endmodule
