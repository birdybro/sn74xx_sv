`timescale 1ns/1ps
module tb_ttl_74as131;
    logic clk, en_n;
    logic [2:0] a;
    logic [7:0] y_n, exp;
    ttl_74as131 dut(.clk(clk), .en_n(en_n), .a(a), .y_n(y_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; en_n=0; a=3'd0; tick;
        if (y_n !== 8'hFE) errors++;
        a=3'd5; tick;
        if (y_n !== 8'hDF) errors++;
        en_n = 1; #1;
        if (y_n !== 8'hFF) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74as131: %0d errors", errors);
        $display("PASS: tb_ttl_74as131");
        $finish;
    end
endmodule
