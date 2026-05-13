`timescale 1ns/1ps
module tb_ttl_74x1g125;
    logic a, oe_n, y, hiz;
    ttl_74x1g125 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; a = 1; #1; if (y !== 1) errors++;
        oe_n = 1; #1; if (hiz !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g125: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g125");
        $finish;
    end
endmodule
