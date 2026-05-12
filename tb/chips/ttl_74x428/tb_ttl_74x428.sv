`timescale 1ns/1ps
module tb_ttl_74x428;
    logic [7:0] status;
    logic dbin, wr_n, hlda, mem_r_n, mem_w_n, io_r_n, io_w_n, inta_n;
    ttl_74x428 dut(.status(status), .dbin(dbin), .wr_n(wr_n), .hlda(hlda),
                   .mem_r_n(mem_r_n), .mem_w_n(mem_w_n), .io_r_n(io_r_n), .io_w_n(io_w_n), .inta_n(inta_n));
    int errors;
    initial begin
        errors = 0;
        status=8'h80; dbin=1; wr_n=1; hlda=0; #1;
        if (mem_r_n !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x428: %0d errors", errors);
        $display("PASS: tb_ttl_74x428");
        $finish;
    end
endmodule
