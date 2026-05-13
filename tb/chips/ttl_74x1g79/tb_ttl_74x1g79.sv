`timescale 1ns/1ps
module tb_ttl_74x1g79;
    logic clk, d, q;
    ttl_74x1g79 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 0; d = 1;
        #1; clk = 1; #1;
        if (q !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g79: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g79");
        $finish;
    end
endmodule
