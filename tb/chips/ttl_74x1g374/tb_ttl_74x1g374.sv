`timescale 1ns/1ps
module tb_ttl_74x1g374;
    logic clk, d, oe_n, q, hiz;
    ttl_74x1g374 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 0; d = 1; oe_n = 0;
        #1; clk = 1; #1; if (q !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g374: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g374");
        $finish;
    end
endmodule
