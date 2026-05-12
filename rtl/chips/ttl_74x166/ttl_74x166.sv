// ttl_74x166 - Parallel-load 8-bit shift register, sync load, async clear.
module ttl_74x166 (
    input  logic       clk,
    input  logic       clr_n,
    input  logic       sh_ld_n,    // 0: parallel load; 1: shift right
    input  logic       ser,
    input  logic [7:0] p,
    output logic       q_h
);
    logic [7:0] sr;
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n)        sr <= 8'h00;
        else if (!sh_ld_n) sr <= p;
        else               sr <= {ser, sr[7:1]};
    end
    assign q_h = sr[0];
endmodule
