// ttl_74x624 - voltage-controlled oscillator (digital approximation).
// VCO behavior is intrinsically analog. This model accepts a precomputed
// 8-bit period code; outputs toggle every `period_code` clocks.
module ttl_74x624 (
    input  logic       clk, reset_n, enable,
    input  logic [7:0] period_code,
    output logic       out
);
    logic [7:0] cnt;
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            cnt <= 0;
            out <= 0;
        end else if (enable) begin
            if (cnt >= period_code) begin
                cnt <= 0;
                out <= ~out;
            end else cnt <= cnt + 1;
        end
    end
endmodule
