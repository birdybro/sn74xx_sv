`timescale 1ns/1ps
module tb_ttl_74x2g126;
    logic [1:0] oe, a, y, hiz;
    ttl_74x2g126 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe = 2'b11; a = 2'b11; #1;
        if (y !== 2'b11) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g126: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g126");
        $finish;
    end
endmodule
