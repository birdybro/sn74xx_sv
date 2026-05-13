`timescale 1ns/1ps
module tb_ttl_74x1t126;
    logic a, oe, y, hiz;
    ttl_74x1t126 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe = 1; a = 1; #1; if (y !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1t126: %0d errors", errors);
        $display("PASS: tb_ttl_74x1t126");
        $finish;
    end
endmodule
