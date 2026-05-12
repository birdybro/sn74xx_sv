// ttl_74x292 - Programmable frequency divider / digital timer.
// Divides clk by 2^n where n is programmable 1..31. Outputs a pulse on output_pulse
// when the counter reaches the divisor.
module ttl_74x292 (
    input  logic       clk,
    input  logic       clr_n,
    input  logic [4:0] div_sel,    // divides clock by 2^div_sel
    output logic       q
);
    logic [31:0] cnt;
    logic [31:0] divisor;
    assign divisor = 32'b1 << div_sel;

    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n)            begin cnt <= 0; q <= 1'b0; end
        else if (cnt == divisor - 1) begin cnt <= 0; q <= ~q; end
        else                   cnt <= cnt + 1;
    end
endmodule
