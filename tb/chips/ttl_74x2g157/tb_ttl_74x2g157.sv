`timescale 1ns/1ps
module tb_ttl_74x2g157;
    logic a, b, sel, y;
    ttl_74x2g157 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; b = 0; sel = 0; #1; if (y !== 1) errors++;
        sel = 1; #1; if (y !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g157: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g157");
        $finish;
    end
endmodule
