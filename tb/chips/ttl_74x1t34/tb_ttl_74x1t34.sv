`timescale 1ns/1ps
module tb_ttl_74x1t34;
    logic [0:0] a, y;
    ttl_74x1t34 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1'h1; #1;
        if (!(y === 1'h1)) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1t34: %0d errors", errors);
        $display("PASS: tb_ttl_74x1t34");
        $finish;
    end
endmodule
