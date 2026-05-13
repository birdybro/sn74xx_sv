`timescale 1ns/1ps
module tb_ttl_74x1g18;
    logic a, sel, y0, y1;
    ttl_74x1g18 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; sel = 0; #1; if (y0 !== 1 || y1 !== 0) errors++;
        sel = 1; #1; if (y0 !== 0 || y1 !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g18: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g18");
        $finish;
    end
endmodule
