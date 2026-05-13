`timescale 1ns/1ps
module tb_ttl_74x1g86;
    logic a, b, y;
    ttl_74x1g86 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; b = 0; #1; if (y !== 1) errors++;
        a = 1; b = 1; #1; if (y !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g86: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g86");
        $finish;
    end
endmodule
