`timescale 1ns/1ps
module tb_ttl_74x8374;
    logic clk, oe_n;
    logic [7:0] d, q;
    logic hiz;
    ttl_74x8374 dut(.*);
    int errors;
    initial begin
        errors = 0;
        clk = 0; oe_n = 0; d = 8'h69; #1; clk = 1; #1;
        if (q !== 8'h69) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x8374: %0d errors", errors);
        $display("PASS: tb_ttl_74x8374");
        $finish;
    end
endmodule
