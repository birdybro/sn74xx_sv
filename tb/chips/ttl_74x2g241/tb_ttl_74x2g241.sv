`timescale 1ns/1ps
module tb_ttl_74x2g241;
    logic oe_n, oe;
    logic a0, a1, y0, y1, hiz0, hiz1;
    ttl_74x2g241 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; oe = 1; a0 = 1; a1 = 1; #1;
        if (y0 !== 1 || y1 !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g241: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g241");
        $finish;
    end
endmodule
