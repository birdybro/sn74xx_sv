`timescale 1ns/1ps

module tb_ttl_74x55;
    logic a1, b1, c1, d1, a2, b2, c2, d2;
    logic y, expected;
    ttl_74x55 dut (
        .a1(a1), .b1(b1), .c1(c1), .d1(d1),
        .a2(a2), .b2(b2), .c2(c2), .d2(d2),
        .y(y)
    );
    int errors;
    initial begin
        errors = 0;
        for (int i = 0; i < 256; i++) begin
            {d2,c2,b2,a2,d1,c1,b1,a1} = i[7:0]; #1;
            expected = ~((a1 & b1 & c1 & d1) | (a2 & b2 & c2 & d2));
            if (y !== expected) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x55: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x55 (256 vectors)");
        $finish;
    end
endmodule
