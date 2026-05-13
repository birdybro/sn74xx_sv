`timescale 1ns/1ps
module tb_ttl_74x2t45;
    logic oe_n, dir;
    logic [1:0] a_in, b_in, a_out, b_out;
    logic a_hiz, b_hiz;
    ttl_74x2t45 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; dir = 1; a_in = 2'h3; b_in = 0; #1;
        if (b_out !== 2'h3) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x2t45: %0d errors", errors);
        $display("PASS: tb_ttl_74x2t45");
        $finish;
    end
endmodule
