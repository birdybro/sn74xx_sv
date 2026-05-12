// ttl_74x627 - dual VCO (digital approximation).
module ttl_74x627 (
    input  logic       clk, reset_n,
    input  logic [7:0] period_code_a, period_code_b,
    output logic       out_a, out_b
);
    logic [7:0] cnt_a, cnt_b;
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            cnt_a <= 0; cnt_b <= 0; out_a <= 0; out_b <= 0;
        end else begin
            if (cnt_a >= period_code_a) begin
                cnt_a <= 0; out_a <= ~out_a;
            end else cnt_a <= cnt_a + 1;
            if (cnt_b >= period_code_b) begin
                cnt_b <= 0; out_b <= ~out_b;
            end else cnt_b <= cnt_b + 1;
        end
    end
endmodule
