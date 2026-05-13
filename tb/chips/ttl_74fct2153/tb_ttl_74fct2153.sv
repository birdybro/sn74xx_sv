`timescale 1ns/1ps
module tb_ttl_74fct2153;
    logic [1:0] s, g_n, y;
    logic [3:0] d0, d1;
    ttl_74fct2153 dut(.*);
    int errors;
    initial begin
        errors = 0;
        g_n = 2'b00; d0 = 4'b1010; d1 = 4'b0101;
        for (int si = 0; si < 4; si++) begin
            s = si[1:0]; #1;
            if (y[0] !== d0[s] || y[1] !== d1[s]) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74fct2153: %0d errors", errors);
        $display("PASS: tb_ttl_74fct2153");
        $finish;
    end
endmodule
