// ttl_74h120 - Dual JK FF, separate clock inputs (similar to 74x73).
module ttl_74h120 (
    input  logic [1:0] clk,
    input  logic [1:0] j,
    input  logic [1:0] k,
    output logic [1:0] q,
    output logic [1:0] q_n
);
    always_ff @(posedge clk[0]) begin
        case ({j[0], k[0]})
            2'b01: q[0] <= 1'b0;
            2'b10: q[0] <= 1'b1;
            2'b11: q[0] <= ~q[0];
            default: ;
        endcase
    end
    always_ff @(posedge clk[1]) begin
        case ({j[1], k[1]})
            2'b01: q[1] <= 1'b0;
            2'b10: q[1] <= 1'b1;
            2'b11: q[1] <= ~q[1];
            default: ;
        endcase
    end
    assign q_n = ~q;
endmodule
