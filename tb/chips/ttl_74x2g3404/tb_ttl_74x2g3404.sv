`timescale 1ns/1ps
module tb_ttl_74x2g3404;
    logic a_buf, a_inv, y_buf, y_inv;
    ttl_74x2g3404 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a_buf = 1; a_inv = 1; #1;
        if (y_buf !== 1 || y_inv !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2g3404: %0d errors", errors);
        $display("PASS: tb_ttl_74x2g3404");
        $finish;
    end
endmodule
