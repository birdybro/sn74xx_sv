`timescale 1ns/1ps
module tb_ttl_74fct2151;
    logic g_n, y, w;
    logic [2:0] s;
    logic [7:0] d;
    ttl_74fct2151 dut(.*);
    int errors;
    initial begin
        errors = 0;
        g_n = 0; d = 8'b10101010;
        for (int si = 0; si < 8; si++) begin
            s = si[2:0]; #1;
            if (y !== d[s] || w !== ~d[s]) errors++;
        end
        g_n = 1; #1;
        if (y !== 0 || w !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74fct2151: %0d errors", errors);
        $display("PASS: tb_ttl_74fct2151");
        $finish;
    end
endmodule
