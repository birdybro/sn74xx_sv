`timescale 1ns/1ps
module tb_ttl_74fct2157;
    logic g_n, select;
    logic [3:0] a, b, y;
    ttl_74fct2157 dut(.*);
    int errors;
    initial begin
        errors = 0;
        g_n = 0; a = 4'hA; b = 4'h5;
        select = 0; #1; if (y !== 4'hA) errors++;
        select = 1; #1; if (y !== 4'h5) errors++;
        g_n = 1; #1; if (y !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74fct2157: %0d errors", errors);
        $display("PASS: tb_ttl_74fct2157");
        $finish;
    end
endmodule
