`timescale 1ns/1ps
module tb_ttl_74x2163;
    logic clk, clr_n, load_n, enp, ent;
    logic [3:0] d, q;
    logic rco;
    ttl_74x2163 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 0; clr_n = 1; load_n = 0; enp = 1; ent = 1; d = 4'd5; #1;
        clk = 1; #1;
        if (q !== 4'd5) errors++;
        load_n = 1;
        clr_n = 0; clk = 0; #1; clk = 1; #1;
        if (q !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2163: %0d errors", errors);
        $display("PASS: tb_ttl_74x2163");
        $finish;
    end
endmodule
