// ttl_74h119 - Dual JK FF, shared clock and clear.
module ttl_74h119 (
    input  logic clk,
    input  logic clr_n,
    input  logic [1:0] j,
    input  logic [1:0] k,
    output logic [1:0] q,
    output logic [1:0] q_n
);
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n) q <= 2'b00;
        else begin
            case ({j[0], k[0]})
                2'b01: q[0] <= 1'b0;
                2'b10: q[0] <= 1'b1;
                2'b11: q[0] <= ~q[0];
                default: ;
            endcase
            case ({j[1], k[1]})
                2'b01: q[1] <= 1'b0;
                2'b10: q[1] <= 1'b1;
                2'b11: q[1] <= ~q[1];
                default: ;
            endcase
        end
    end
    assign q_n = ~q;
endmodule
