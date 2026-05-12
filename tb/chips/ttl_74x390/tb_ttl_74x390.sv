`timescale 1ns/1ps
module tb_ttl_74x390;
    logic [1:0] clk_a, clk_b, clr;
    logic [3:0] q0, q1;
    ttl_74x390 dut(.clk_a(clk_a), .clk_b(clk_b), .clr(clr), .q0(q0), .q1(q1));
    task automatic tickA0; clk_a[0]=0; #1; clk_a[0]=1; #1; clk_a[0]=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk_a=0; clk_b=0; clr=2'b11; #1;
        if (q0 !== 0 || q1 !== 0) errors++;
        clr=0;
        tickA0; if (q0[0] !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x390: %0d errors", errors);
        $display("PASS: tb_ttl_74x390");
        $finish;
    end
endmodule
