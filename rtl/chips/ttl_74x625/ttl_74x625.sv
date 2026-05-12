// ttl_74x625 - dual voltage-controlled oscillator with two-phase outputs (digital approximation).
module ttl_74x625 (
    input  logic       clk, reset_n,
    input  logic [7:0] period_code,
    output logic       out_a, out_b
);
    logic [7:0] cnt;
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            cnt   <= 0;
            out_a <= 0;
            out_b <= 1;
        end else begin
            if (cnt >= period_code) begin
                cnt   <= 0;
                out_a <= ~out_a;
                out_b <= ~out_b;
            end else cnt <= cnt + 1;
        end
    end
endmodule
