// ttl_74x430 - Cyclic redundancy checker/corrector.
// Computes CRC and indicates error (simplified).
module ttl_74x430 #(parameter [15:0] POLY = 16'h1021)
(
    input  logic        clk,
    input  logic        clr_n,
    input  logic        din,
    output logic [15:0] crc,
    output logic        err
);
    logic feedback;
    assign feedback = crc[15] ^ din;
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n) crc <= 0;
        else begin
            crc <= {crc[14:0], 1'b0};
            if (feedback) crc <= ({crc[14:0], 1'b0}) ^ POLY;
        end
    end
    assign err = (crc != 16'h0);
endmodule
