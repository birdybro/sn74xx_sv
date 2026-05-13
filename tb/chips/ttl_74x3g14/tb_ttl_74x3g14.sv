`timescale 1ns/1ps
module tb_ttl_74x3g14;
    logic [2:0] a, y;
    ttl_74x3g14 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 0; #1;
        if (!(y === 3'h7)) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x3g14: %0d errors", errors);
        $display("PASS: tb_ttl_74x3g14");
        $finish;
    end
endmodule
