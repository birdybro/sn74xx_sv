`timescale 1ns/1ps
module tb_ttl_74x1g27;
    logic a, b, c, y;
    ttl_74x1g27 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 0; b = 0; c = 0; #1; if (y !== 1) errors++;
        a = 1; #1; if (y !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g27: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g27");
        $finish;
    end
endmodule
