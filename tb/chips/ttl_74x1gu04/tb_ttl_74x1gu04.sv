`timescale 1ns/1ps
module tb_ttl_74x1gu04;
    logic a, y;
    ttl_74x1gu04 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; #1; if (y !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1gu04: %0d errors", errors);
        $display("PASS: tb_ttl_74x1gu04");
        $finish;
    end
endmodule
