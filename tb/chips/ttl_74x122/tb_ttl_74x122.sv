`timescale 1ns/1ps
module tb_ttl_74x122;
    logic clk, clr_n, a1_n, a2_n, b1, b2, q, q_n;
    ttl_74x122 #(.PULSE_CYCLES(4)) dut(.clk(clk), .clr_n(clr_n), .a1_n(a1_n), .a2_n(a2_n),
                                       .b1(b1), .b2(b2), .q(q), .q_n(q_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; clr_n = 0; a1_n = 1; a2_n = 1; b1 = 0; b2 = 0; #1;
        clr_n = 1;
        b1 = 1; b2 = 1; tick;
        if (q !== 1) errors++;
        clr_n = 0; #1;
        if (q !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x122: %0d errors", errors);
        $display("PASS: tb_ttl_74x122");
        $finish;
    end
endmodule
