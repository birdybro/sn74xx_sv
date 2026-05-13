`timescale 1ns/1ps
module tb_ttl_74x1g373;
    logic d, le, oe_n, q, hiz;
    ttl_74x1g373 dut(.*);
    int errors;
    initial begin
        errors = 0;
        le = 1; oe_n = 0; d = 1; #1; if (q !== 1) errors++;
        le = 0; d = 0; #1; if (q !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g373: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g373");
        $finish;
    end
endmodule
