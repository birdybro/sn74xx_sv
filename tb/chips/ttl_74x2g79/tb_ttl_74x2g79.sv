`timescale 1ns/1ps
module tb_ttl_74x2g79;
    logic [1:0] clk, d, q;
    ttl_74x2g79 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 2'b00; d = 2'b10;
        #1; clk = 2'b11; #1;
        if (q !== 2'b10) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g79: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g79");
        $finish;
    end
endmodule
