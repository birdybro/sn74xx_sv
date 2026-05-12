`timescale 1ns/1ps
module tb_ttl_74x320;
    logic clk_in, clk_out;
    ttl_74x320 dut(.clk_in(clk_in), .clk_out(clk_out));
    int errors;
    initial begin
        errors = 0;
        clk_in=0; #1; if (clk_out !== 0) errors++;
        clk_in=1; #1; if (clk_out !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x320: %0d errors", errors);
        $display("PASS: tb_ttl_74x320");
        $finish;
    end
endmodule
