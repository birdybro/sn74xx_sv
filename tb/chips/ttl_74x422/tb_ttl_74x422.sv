`timescale 1ns/1ps
module tb_ttl_74x422;
    logic clk, clr_n, a_n, b, q, q_n;
    ttl_74x422 #(.PULSE_CYCLES(4)) dut(.clk(clk), .clr_n(clr_n), .a_n(a_n), .b(b), .q(q), .q_n(q_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=0; a_n=1; b=0; #1;
        clr_n=1;
        b=1; tick;
        if (q !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x422: %0d errors", errors);
        $display("PASS: tb_ttl_74x422");
        $finish;
    end
endmodule
