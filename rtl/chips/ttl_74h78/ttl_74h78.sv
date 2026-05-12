// ttl_74h78 - Dual positive-pulse-triggered JK FF, preset, shared clock and clear.
module ttl_74h78 (
    input  logic clk,
    input  logic clr_n,
    input  logic [1:0] pre_n,
    input  logic [1:0] j,
    input  logic [1:0] k,
    output logic [1:0] q,
    output logic [1:0] q_n
);
    always_ff @(posedge clk or negedge clr_n or negedge pre_n[0]) begin
        if (!clr_n)         q[0] <= 1'b0;
        else if (!pre_n[0]) q[0] <= 1'b1;
        else case ({j[0], k[0]})
            2'b01: q[0] <= 1'b0;
            2'b10: q[0] <= 1'b1;
            2'b11: q[0] <= ~q[0];
            default: ;
        endcase
    end
    always_ff @(posedge clk or negedge clr_n or negedge pre_n[1]) begin
        if (!clr_n)         q[1] <= 1'b0;
        else if (!pre_n[1]) q[1] <= 1'b1;
        else case ({j[1], k[1]})
            2'b01: q[1] <= 1'b0;
            2'b10: q[1] <= 1'b1;
            2'b11: q[1] <= ~q[1];
            default: ;
        endcase
    end
    assign q_n = ~q;
endmodule
