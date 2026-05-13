`timescale 1ns/1ps
module tb_ttl_74x1g80;
    logic clk, d, q_n;
    ttl_74x1g80 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 0; d = 1;
        #1; clk = 1; #1;
        if (q_n !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g80: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g80");
        $finish;
    end
endmodule
