// ttl_74x438 - System controller for Intel 8080A (Intel 8238).
// Same as 74x428.
module ttl_74x438 (
    input  logic [7:0] status,
    input  logic       dbin, wr_n, hlda,
    output logic       mem_r_n, mem_w_n, io_r_n, io_w_n, inta_n
);
    assign mem_r_n = ~(status[7] & dbin);
    assign mem_w_n = ~((~status[1]) & ~wr_n);
    assign io_r_n  = ~(status[6] & dbin);
    assign io_w_n  = ~(status[3] & ~wr_n);
    assign inta_n  = ~(status[0] & dbin);
endmodule
