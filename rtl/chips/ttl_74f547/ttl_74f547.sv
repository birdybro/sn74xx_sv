// ttl_74f547 - 3-to-8 line decoder with address latches and acknowledge output.
module ttl_74f547 (
    input  logic       le, ack_n,
    input  logic [2:0] a,
    output logic [7:0] y_n,
    output logic       ack_out_n
);
    logic [2:0] a_lat;
    always_latch if (le) a_lat = a;
    always_comb begin
        y_n = 8'hFF;
        if (!ack_n) y_n[a_lat] = 1'b0;
    end
    assign ack_out_n = ack_n;
endmodule
