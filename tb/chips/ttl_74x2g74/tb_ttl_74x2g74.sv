`timescale 1ns/1ps
module tb_ttl_74x2g74;
    logic clk, pre_n, clr_n, d, q, q_n;
    ttl_74x2g74 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 0; d = 1; pre_n = 1;
        clr_n = 1; #1; clr_n = 0; #1; clr_n = 1; #1;
        #1; clk = 1; #1;
        if (q !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g74: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g74");
        $finish;
    end
endmodule
