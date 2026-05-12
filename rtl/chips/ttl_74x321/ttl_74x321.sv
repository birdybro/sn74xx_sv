// ttl_74x321 - Crystal oscillator with F/2, F/4 outputs (digital approximation).
module ttl_74x321 (
    input  logic clk_in,
    input  logic clr_n,
    output logic clk_out,
    output logic div2,
    output logic div4
);
    logic [1:0] cnt;
    always_ff @(posedge clk_in or negedge clr_n) begin
        if (!clr_n) cnt <= 2'd0;
        else        cnt <= cnt + 2'd1;
    end
    assign clk_out = clk_in;
    assign div2    = cnt[0];
    assign div4    = cnt[1];
endmodule
