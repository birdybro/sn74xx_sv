`timescale 1ns/1ps
module tb_ttl_74x327;
    logic [1:0] clk_in, clk_out;
    ttl_74x327 dut(.clk_in(clk_in), .clk_out(clk_out));
    int errors;
    initial begin
        errors = 0;
        clk_in=2'b10; #1; if (clk_out !== 2'b10) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x327: %0d errors", errors);
        $display("PASS: tb_ttl_74x327");
        $finish;
    end
endmodule
