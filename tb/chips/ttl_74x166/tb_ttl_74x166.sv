`timescale 1ns/1ps
module tb_ttl_74x166;
    logic clk, clr_n, sh_ld_n, ser, q_h;
    logic [7:0] p;
    ttl_74x166 dut(.clk(clk), .clr_n(clr_n), .sh_ld_n(sh_ld_n), .ser(ser), .p(p), .q_h(q_h));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=0; sh_ld_n=1; ser=0; p=0; #1;
        if (q_h !== 0) errors++;
        clr_n=1;
        sh_ld_n=0; p=8'b11110000; tick;
        if (q_h !== 1'b0) errors++; // LSB of 0xF0 = 0
        sh_ld_n=1; ser=0; tick; tick; tick; tick;
        if (q_h !== 1'b1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x166: %0d errors", errors);
        $display("PASS: tb_ttl_74x166");
        $finish;
    end
endmodule
