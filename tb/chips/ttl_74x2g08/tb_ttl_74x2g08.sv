`timescale 1ns/1ps
module tb_ttl_74x2g08;
    logic [1:0] a, b, y;
    ttl_74x2g08 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 2'h3; b = 2'h3; #1;
        if (!(y === 2'h3)) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g08: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g08");
        $finish;
    end
endmodule
