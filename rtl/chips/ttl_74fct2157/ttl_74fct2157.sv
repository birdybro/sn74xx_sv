// ttl_74fct2157 - Quad 2-to-1 line multiplexer (= 74x157).
module ttl_74fct2157 (
    input  logic       g_n,
    input  logic       select,
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] y
);
    assign y = g_n ? 4'h0 : (select ? b : a);
endmodule
