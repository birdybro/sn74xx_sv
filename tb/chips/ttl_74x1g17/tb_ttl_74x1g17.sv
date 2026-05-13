`timescale 1ns/1ps
module tb_ttl_74x1g17;
    logic a, oe_n, y, hiz;
    ttl_74x1g17 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; a = 1; #1; if (y !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g17: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g17");
        $finish;
    end
endmodule
