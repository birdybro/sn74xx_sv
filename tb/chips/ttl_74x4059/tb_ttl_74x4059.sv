`timescale 1ns/1ps
module tb_ttl_74x4059;
    logic clk, rst;
    logic [13:0] n;
    logic out;
    ttl_74x4059 dut(.*);
    int errors;
    task tick; #1; clk = 1; #1; clk = 0; endtask
    initial begin
        errors = 0;
        clk = 0; n = 14'd4; rst = 1; #1; rst = 0; #1;
        if (out !== 1) errors++;       // initial cnt=0 => out asserted
        tick;                          // load 3
        if (out !== 0) errors++;
        tick; tick; tick;              // 2,1,0
        if (out !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x4059: %0d errors", errors);
        $display("PASS: tb_ttl_74x4059");
        $finish;
    end
endmodule
