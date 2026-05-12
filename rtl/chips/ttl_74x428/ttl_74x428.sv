// ttl_74x428 - System controller for Intel 8080A (Intel 8228 equivalent).
// Decodes status bits from CPU to generate read/write strobes.
module ttl_74x428 (
    input  logic [7:0] status,   // 8080 status byte
    input  logic       dbin,
    input  logic       wr_n,
    input  logic       hlda,
    output logic       mem_r_n,
    output logic       mem_w_n,
    output logic       io_r_n,
    output logic       io_w_n,
    output logic       inta_n
);
    // Simplified decode using bits of status:
    // status[0] = INTA, status[1] = WO_n, status[3] = OUT, status[5] = M1, status[6] = INP, status[7] = MEMR
    assign mem_r_n = ~(status[7] & dbin);
    assign mem_w_n = ~((~status[1]) & ~wr_n);
    assign io_r_n  = ~(status[6] & dbin);
    assign io_w_n  = ~(status[3] & ~wr_n);
    assign inta_n  = ~(status[0] & dbin);
endmodule
