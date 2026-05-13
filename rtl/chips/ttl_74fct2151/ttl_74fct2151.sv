// ttl_74fct2151 - 8-line to 1-line multiplexer with complementary outputs (= 74x151).
module ttl_74fct2151 (
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
