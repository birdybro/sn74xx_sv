// ttl_74x165 - 8-bit parallel-in / serial-out (PISO) shift register.
// shift_n: when low, parallel load on every posedge. When high, shift right.
// Serial output q_h and complement q_h_n.
// Async load via sh_ld_n (same as shift_n in this implementation).
module ttl_74x165 (
    input  logic       clk,
    input  logic       sh_ld_n,    // when 0: parallel load; when 1: shift
    input  logic       ser,        // serial input (entering MSB end on shift)
    input  logic [7:0] p,
    output logic       q_h,
    output logic       q_h_n
);
    logic [7:0] sr;
    always_ff @(posedge clk) begin
        if (!sh_ld_n) sr <= p;
        else          sr <= {ser, sr[7:1]};
    end
    assign q_h   = sr[0];
    assign q_h_n = ~sr[0];
endmodule
