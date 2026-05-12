`timescale 1ns/1ps
module tb_ttl_74x324;
    logic enable_n, clk_in, clk_out, clk_out_n;
    ttl_74x324 dut(.enable_n(enable_n), .clk_in(clk_in), .clk_out(clk_out), .clk_out_n(clk_out_n));
    int errors;
    initial begin
        errors = 0;
        enable_n=0; clk_in=1; #1;
        if (clk_out !== 1 || clk_out_n !== 0) errors++;
        enable_n=1; #1;
        if (clk_out !== 0 || clk_out_n !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x324: %0d errors", errors);
        $display("PASS: tb_ttl_74x324");
        $finish;
    end
endmodule
