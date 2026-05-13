// ttl_74x8646 - Octal bus transceiver and register with JTAG port (= 74x646).
// JTAG port not modeled.
module ttl_74x8646 (
    input  logic       g_n, dir, sab, sba, cab, cba,
    input  logic [7:0] a_in, b_in,
    output logic [7:0] a_out, b_out,
    output logic       a_oe_n, b_oe_n
);
    logic [7:0] ab_q, ba_q;
    always_ff @(posedge cab) ab_q <= a_in;
    always_ff @(posedge cba) ba_q <= b_in;
    always_comb begin
        if (g_n) begin
            a_out  = 8'h00; b_out  = 8'h00;
            a_oe_n = 1'b1;  b_oe_n = 1'b1;
        end else if (dir) begin
            a_out  = 8'h00;
            b_out  = sab ? ab_q : a_in;
            a_oe_n = 1'b1;  b_oe_n = 1'b0;
        end else begin
            a_out  = sba ? ba_q : b_in;
            b_out  = 8'h00;
            a_oe_n = 1'b0;  b_oe_n = 1'b1;
        end
    end
endmodule
