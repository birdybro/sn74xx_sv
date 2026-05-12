// ttl_74x294 - Programmable frequency divider / digital timer (like 74x292).
module ttl_74x294 (
    input  logic       clk,
    input  logic       clr_n,
    input  logic [4:0] div_sel,
    output logic       q
);
    logic [31:0] cnt;
    logic [31:0] divisor;
    assign divisor = 32'b1 << div_sel;
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n)                begin cnt <= 0; q <= 1'b0; end
        else if (cnt == divisor-1) begin cnt <= 0; q <= ~q; end
        else                       cnt <= cnt + 1;
    end
endmodule
