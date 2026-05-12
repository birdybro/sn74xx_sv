// ttl_74x265 - Quad complementary output elements (buffers with both Q and /Q).
module ttl_74x265 (
    input  logic [3:0] a,
    output logic [3:0] y,
    output logic [3:0] y_n
);
    assign y   =  a;
    assign y_n = ~a;
endmodule
