`timescale 1ns/1ps
module tb_ttl_74x156;
    logic [1:0] a, g_n;
    logic [3:0] y0_n, y1_n, exp0, exp1;
    ttl_74x156 dut(.a(a), .g_n(g_n), .y0_n(y0_n), .y1_n(y1_n));
    int errors;
    initial begin
        errors = 0;
        for (int i = 0; i < 16; i++) begin
            a = i[1:0]; g_n = i[3:2]; #1;
            exp0 = 4'hF; exp1 = 4'hF;
            if (!g_n[0]) exp0[a] = 1'b0;
            if (!g_n[1]) exp1[a] = 1'b0;
            if (y0_n !== exp0 || y1_n !== exp1) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x156: %0d errors", errors);
        $display("PASS: tb_ttl_74x156");
        $finish;
    end
endmodule
