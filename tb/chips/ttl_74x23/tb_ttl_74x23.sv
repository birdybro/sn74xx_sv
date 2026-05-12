`timescale 1ns/1ps

module tb_ttl_74x23;
    logic [1:0] a, b, c, d, g, y, expected;
    ttl_74x23 dut (.a(a), .b(b), .c(c), .d(d), .g(g), .y(y));
    int errors;
    initial begin
        errors = 0;
        for (int i = 0; i < 1024; i++) begin
            a = i[1:0]; b = i[3:2]; c = i[5:4]; d = i[7:6]; g = i[9:8]; #1;
            expected = g & ~(a | b | c | d);
            if (y !== expected) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x23: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x23 (1024 vectors)");
        $finish;
    end
endmodule
