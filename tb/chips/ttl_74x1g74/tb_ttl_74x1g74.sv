`timescale 1ns/1ps
module tb_ttl_74x1g74;
    logic clk, pre_n, clr_n, d, q, q_n;
    ttl_74x1g74 dut(.*);
    int errors;
    task tick; #1; clk = 1; #1; clk = 0; endtask
    initial begin
        errors = 0;
        clk = 0; d = 1; pre_n = 1;
        clr_n = 1; #1; clr_n = 0; #1; clr_n = 1; #1;
        tick;
        if (q !== 1 || q_n !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g74: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g74");
        $finish;
    end
endmodule
