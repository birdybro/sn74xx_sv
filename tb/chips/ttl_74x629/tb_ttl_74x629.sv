`timescale 1ns/1ps
module tb_ttl_74x629;
    logic clk, reset_n, enable_a, enable_b, out_a, out_b;
    logic [1:0] range_a, range_b;
    logic [7:0] period_code_a, period_code_b;
    ttl_74x629 dut(.*);
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors=0; clk=0; enable_a=1; enable_b=0;
        range_a=2'd3; range_b=2'd3; period_code_a=0; period_code_b=0;
        reset_n=1; #1; reset_n=0; #1; reset_n=1;
        tick;
        if (out_a !== 1) errors++;
        if (out_b !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x629: %0d errors", errors);
        $display("PASS: tb_ttl_74x629");
        $finish;
    end
endmodule
