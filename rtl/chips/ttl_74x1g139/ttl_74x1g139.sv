// ttl_74x1g139 - Single 2-to-4 line decoder with active-low outputs.
module ttl_74x1g139 (
    input  logic en_n,
    input  logic [1:0] sel,
    output logic [3:0] y_n
);
    always_comb begin
        y_n = 4'hF;
        if (!en_n) y_n[sel] = 1'b0;
    end
endmodule
