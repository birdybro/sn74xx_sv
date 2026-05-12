`timescale 1ns/1ps
module tb_ttl_74x293;
    logic clk_a, clk_b, r0_1, r0_2, q_a, q_b, q_c, q_d;
    ttl_74x293 dut(.clk_a(clk_a), .clk_b(clk_b), .r0_1(r0_1), .r0_2(r0_2), .q_a(q_a), .q_b(q_b), .q_c(q_c), .q_d(q_d));
    task automatic tickA; clk_a=0; #1; clk_a=1; #1; clk_a=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk_a=0; clk_b=0; r0_1=1; r0_2=1; #1;
        if ({q_d,q_c,q_b,q_a} !== 0) errors++;
        r0_1=0; r0_2=0;
        tickA; if (q_a !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x293: %0d errors", errors);
        $display("PASS: tb_ttl_74x293");
        $finish;
    end
endmodule
