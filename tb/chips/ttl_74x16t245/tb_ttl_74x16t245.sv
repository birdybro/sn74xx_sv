`timescale 1ns/1ps
module tb_ttl_74x16t245;
    logic oe_n, dir;
    logic [15:0] a_in, b_in, a_out, b_out;
    logic a_hiz, b_hiz;
    ttl_74x16t245 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; dir = 1; a_in = 16'hffff; b_in = 0; #1;
        if (b_out !== 16'hffff) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x16t245: %0d errors", errors);
        $display("PASS: tb_ttl_74x16t245");
        $finish;
    end
endmodule
