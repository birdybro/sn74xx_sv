// ttl_74x628 - VCO with enable and range control (digital approximation).
module ttl_74x628 (
    input  logic       clk, reset_n, enable,
    input  logic [1:0] range,
    input  logic [7:0] period_code,
    output logic       out
);
    logic [9:0] cnt;
    logic [9:0] limit;
    always_comb limit = {period_code, 2'b0} >> (2'd3 - range);
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            cnt <= 0; out <= 0;
        end else if (enable) begin
            if (cnt >= limit) begin
                cnt <= 0; out <= ~out;
            end else cnt <= cnt + 1;
        end
    end
endmodule
