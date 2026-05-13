`timescale 1ns/1ps
module tb_ttl_74x3g0434;
    logic [1:0] a_inv, y_inv;
    logic a_buf, y_buf;
    ttl_74x3g0434 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a_inv = 2'b10; a_buf = 1; #1;
        if (y_inv !== 2'b01 || y_buf !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x3g0434: %0d errors", errors);
        $display("PASS: tb_ttl_74x3g0434");
        $finish;
    end
endmodule
