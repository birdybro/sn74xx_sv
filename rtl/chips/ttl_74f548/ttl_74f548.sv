// ttl_74f548 - 3-to-8 line decoder/demultiplexer with acknowledge output.
module ttl_74f548 (
    input  logic [2:0] a,
    input  logic       g1, g2_n, ack_n,
    output logic [7:0] y_n,
    output logic       ack_out_n
);
    logic enable;
    assign enable = g1 && !g2_n;
    always_comb begin
        y_n = 8'hFF;
        if (enable) y_n[a] = 1'b0;
    end
    assign ack_out_n = ack_n | !enable;
endmodule
