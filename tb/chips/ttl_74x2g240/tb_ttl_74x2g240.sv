`timescale 1ns/1ps
module tb_ttl_74x2g240;
    logic [1:0] oe_n, a, y, hiz;
    ttl_74x2g240 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 2'b00; a = 2'b00; #1;
        if (y !== 2'b11) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g240: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g240");
        $finish;
    end
endmodule
