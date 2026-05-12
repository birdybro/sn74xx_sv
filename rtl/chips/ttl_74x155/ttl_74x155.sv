// ttl_74x155 - Dual 2-to-4 line decoder/demultiplexer with shared address.
// a[1:0] shared. Per-mux enable g_n[1:0]. Active-low outputs.
module ttl_74x155 (
    input  logic [1:0] a,
    input  logic [1:0] g_n,
    output logic [3:0] y0_n,
    output logic [3:0] y1_n
);
    always_comb begin
        y0_n = 4'hF;
        y1_n = 4'hF;
        if (!g_n[0]) y0_n[a] = 1'b0;
        if (!g_n[1]) y1_n[a] = 1'b0;
    end
endmodule
