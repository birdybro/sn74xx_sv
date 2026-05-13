`timescale 1ns/1ps
module tb_ttl_74x1g19;
    logic en_n, sel, y0_n, y1_n;
    ttl_74x1g19 dut(.*);
    int errors;
    initial begin
        errors = 0;
        en_n = 0; sel = 0; #1; if (y0_n !== 0 || y1_n !== 1) errors++;
        sel = 1; #1; if (y0_n !== 1 || y1_n !== 0) errors++;
        en_n = 1; #1; if (y0_n !== 1 || y1_n !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g19: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g19");
        $finish;
    end
endmodule
