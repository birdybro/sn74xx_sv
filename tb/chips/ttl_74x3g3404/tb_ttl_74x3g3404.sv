`timescale 1ns/1ps
module tb_ttl_74x3g3404;
    logic [1:0] a_buf, y_buf;
    logic a_inv, y_inv;
    ttl_74x3g3404 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a_buf = 2'b11; a_inv = 0; #1;
        if (y_buf !== 2'b11 || y_inv !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x3g3404: %0d errors", errors);
        $display("PASS: tb_ttl_74x3g3404");
        $finish;
    end
endmodule
