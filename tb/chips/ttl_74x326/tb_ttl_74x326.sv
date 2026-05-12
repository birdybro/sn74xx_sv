`timescale 1ns/1ps
module tb_ttl_74x326;
    logic [1:0] enable_n, clk_in, clk_out, clk_out_n;
    ttl_74x326 dut(.enable_n(enable_n), .clk_in(clk_in), .clk_out(clk_out), .clk_out_n(clk_out_n));
    int errors;
    initial begin
        errors = 0;
        enable_n=2'b00; clk_in=2'b10; #1;
        if (clk_out !== 2'b10) errors++;
        enable_n=2'b11; #1;
        if (clk_out !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x326: %0d errors", errors);
        $display("PASS: tb_ttl_74x326");
        $finish;
    end
endmodule
