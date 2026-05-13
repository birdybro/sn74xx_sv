`timescale 1ns/1ps
module tb_ttl_74x1g158;
    logic a, b, sel, y_n;
    ttl_74x1g158 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; b = 0; sel = 0; #1; if (y_n !== 0) errors++;
        sel = 1; #1; if (y_n !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g158: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g158");
        $finish;
    end
endmodule
