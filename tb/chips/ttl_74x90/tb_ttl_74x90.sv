`timescale 1ns/1ps
module tb_ttl_74x90;
    logic clk_a, clk_b, r0_1, r0_2, r9_1, r9_2;
    logic q_a, q_b, q_c, q_d;
    ttl_74x90 dut(.clk_a(clk_a), .clk_b(clk_b),
                  .r0_1(r0_1), .r0_2(r0_2), .r9_1(r9_1), .r9_2(r9_2),
                  .q_a(q_a), .q_b(q_b), .q_c(q_c), .q_d(q_d));
    task automatic tickA; clk_a=0; #1; clk_a=1; #1; clk_a=0; #1; endtask
    task automatic tickB; clk_b=0; #1; clk_b=1; #1; clk_b=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk_a=0; clk_b=0; r0_1=1; r0_2=1; r9_1=0; r9_2=0; #1;
        if ({q_d, q_c, q_b, q_a} !== 4'b0000) errors++;
        r0_1=0; r0_2=0;
        // Toggle section A
        tickA; if (q_a !== 1) errors++;
        tickA; if (q_a !== 0) errors++;
        tickA; if (q_a !== 1) errors++;
        r0_1=1; r0_2=1; #1; if (q_a !== 0) errors++;
        r0_1=0; r0_2=0;
        // ÷5 section
        tickB; if ({q_d, q_c, q_b} !== 3'b001) errors++;
        tickB; if ({q_d, q_c, q_b} !== 3'b010) errors++;
        tickB; if ({q_d, q_c, q_b} !== 3'b011) errors++;
        tickB; if ({q_d, q_c, q_b} !== 3'b100) errors++;
        tickB; if ({q_d, q_c, q_b} !== 3'b000) errors++;
        // Set to 9
        r9_1=1; r9_2=1; #1;
        if ({q_d, q_c, q_b, q_a} !== 4'b1001) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x90: %0d errors", errors);
        $display("PASS: tb_ttl_74x90");
        $finish;
    end
endmodule
