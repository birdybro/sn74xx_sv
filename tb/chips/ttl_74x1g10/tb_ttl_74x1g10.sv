`timescale 1ns/1ps
module tb_ttl_74x1g10;
    logic a, b, c, y;
    ttl_74x1g10 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; b = 1; c = 1; #1; if (y !== 0) errors++;
        a = 0; #1; if (y !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g10: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g10");
        $finish;
    end
endmodule
