`timescale 1ns/1ps
module tb_ttl_74x423;
    logic [1:0] clk, clr_n, a_n, b, q, q_n;
    ttl_74x423 #(.PULSE_CYCLES(4)) dut(.clk(clk), .clr_n(clr_n), .a_n(a_n), .b(b), .q(q), .q_n(q_n));
    task automatic tick(input int i); clk[i]=0; #1; clk[i]=1; #1; clk[i]=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=0; a_n=2'b11; b=0; #1;
        clr_n=2'b11;
        b[0]=1; tick(0);
        if (q[0] !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x423: %0d errors", errors);
        $display("PASS: tb_ttl_74x423");
        $finish;
    end
endmodule
