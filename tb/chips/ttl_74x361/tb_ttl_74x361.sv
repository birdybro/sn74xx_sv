`timescale 1ns/1ps
module tb_ttl_74x361;
    logic clk, clr_n;
    logic [3:0] phase;
    ttl_74x361 #(.CYCLE(16)) dut(.clk(clk), .clr_n(clr_n), .phase(phase));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=0; #1;
        if (phase !== 4'b0001) errors++;
        clr_n=1;
        for (int i = 0; i < 4; i++) tick;
        if (phase !== 4'b0010) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x361: %0d errors", errors);
        $display("PASS: tb_ttl_74x361");
        $finish;
    end
endmodule
