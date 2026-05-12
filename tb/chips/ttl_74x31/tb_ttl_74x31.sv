`timescale 1ns/1ps
module tb_ttl_74x31;
    logic [5:0] a, y;
    ttl_74x31 dut (.a(a), .y(y));
    int errors;
    initial begin
        errors = 0;
        for (int i = 0; i < 64; i++) begin
            a = i[5:0]; #1;
            if (y !== a) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x31: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x31 (64 vectors, digital pass-through)");
        $finish;
    end
endmodule
