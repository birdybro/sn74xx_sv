`timescale 1ns/1ps
module tb_ttl_74x2g80;
    logic [1:0] clk, d, q_n;
    ttl_74x2g80 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 2'b00; d = 2'b10;
        #1; clk = 2'b11; #1;
        if (q_n !== 2'b01) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g80: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g80");
        $finish;
    end
endmodule
