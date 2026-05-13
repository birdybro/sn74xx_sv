`timescale 1ns/1ps
module tb_ttl_74x3g17;
    logic [2:0] oe_n, a, y, hiz;
    ttl_74x3g17 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 3'b000; a = 3'b110; #1;
        if (y !== 3'b110) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x3g17: %0d errors", errors);
        $display("PASS: tb_ttl_74x3g17");
        $finish;
    end
endmodule
