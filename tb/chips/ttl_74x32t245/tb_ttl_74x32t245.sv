`timescale 1ns/1ps
module tb_ttl_74x32t245;
    logic oe_n, dir;
    logic [31:0] a_in, b_in, a_out, b_out;
    logic a_hiz, b_hiz;
    ttl_74x32t245 dut(.*);
    int errors;
    initial begin
        errors = 0;
        oe_n = 0; dir = 1; a_in = 32'hffffffff; b_in = 0; #1;
        if (b_out !== 32'hffffffff) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x32t245: %0d errors", errors);
        $display("PASS: tb_ttl_74x32t245");
        $finish;
    end
endmodule
