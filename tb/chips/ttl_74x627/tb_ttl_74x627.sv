`timescale 1ns/1ps
module tb_ttl_74x627;
    logic clk, reset_n, out_a, out_b;
    logic [7:0] period_code_a, period_code_b;
    ttl_74x627 dut(.*);
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors=0; clk=0; period_code_a=8'd0; period_code_b=8'd1;
        reset_n=1; #1; reset_n=0; #1; reset_n=1;
        tick;
        if (out_a !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x627: %0d errors", errors);
        $display("PASS: tb_ttl_74x627");
        $finish;
    end
endmodule
