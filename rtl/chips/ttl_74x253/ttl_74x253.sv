// ttl_74x253 - Dual 4-to-1 mux with 3-state outputs.
module ttl_74x253 (
    input  logic [1:0] s,
    input  logic [1:0] g_n,
    input  logic [3:0] d0,
    input  logic [3:0] d1,
    output logic [1:0] y
);
    assign y[0] = g_n[0] ? 1'b0 : d0[s];
    assign y[1] = g_n[1] ? 1'b0 : d1[s];
endmodule
