`timescale 1ns/1ps
module tb_ttl_74x325;
    logic [1:0] clk_in, clk_out, clk_out_n;
    ttl_74x325 dut(.clk_in(clk_in), .clk_out(clk_out), .clk_out_n(clk_out_n));
    int errors;
    initial begin
        errors = 0;
        clk_in=2'b10; #1;
        if (clk_out !== 2'b10 || clk_out_n !== 2'b01) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x325: %0d errors", errors);
        $display("PASS: tb_ttl_74x325");
        $finish;
    end
endmodule
