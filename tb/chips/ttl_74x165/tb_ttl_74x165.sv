`timescale 1ns/1ps
module tb_ttl_74x165;
    logic clk, sh_ld_n, ser, q_h, q_h_n;
    logic [7:0] p;
    ttl_74x165 dut(.clk(clk), .sh_ld_n(sh_ld_n), .ser(ser), .p(p), .q_h(q_h), .q_h_n(q_h_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; sh_ld_n=0; ser=0; p=8'b10101010; tick;
        if (q_h !== 1'b0) errors++; // LSB of 0xAA is 0
        sh_ld_n = 1;
        tick;
        if (q_h !== 1'b1) errors++; // next bit
        tick;
        if (q_h !== 1'b0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x165: %0d errors", errors);
        $display("PASS: tb_ttl_74x165");
        $finish;
    end
endmodule
