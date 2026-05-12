// ttl_74x629 - dual VCO with enable and range control (digital approximation).
module ttl_74x629 (
    input  logic       clk, reset_n, enable_a, enable_b,
    input  logic [1:0] range_a, range_b,
    input  logic [7:0] period_code_a, period_code_b,
    output logic       out_a, out_b
);
    logic [9:0] cnt_a, cnt_b, lim_a, lim_b;
    always_comb lim_a = {period_code_a, 2'b0} >> (2'd3 - range_a);
    always_comb lim_b = {period_code_b, 2'b0} >> (2'd3 - range_b);
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            cnt_a <= 0; cnt_b <= 0; out_a <= 0; out_b <= 0;
        end else begin
            if (enable_a) begin
                if (cnt_a >= lim_a) begin cnt_a <= 0; out_a <= ~out_a; end
                else cnt_a <= cnt_a + 1;
            end
            if (enable_b) begin
                if (cnt_b >= lim_b) begin cnt_b <= 0; out_b <= ~out_b; end
                else cnt_b <= cnt_b + 1;
            end
        end
    end
endmodule
