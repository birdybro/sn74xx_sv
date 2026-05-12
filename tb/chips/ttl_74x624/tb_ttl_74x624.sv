`timescale 1ns/1ps
module tb_ttl_74x624;
    logic clk, reset_n, enable, out;
    logic [7:0] period_code;
    ttl_74x624 dut(.*);
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors=0; clk=0; enable=1; period_code=8'd3;
        reset_n=1; #1; reset_n=0; #1; reset_n=1;
        tick; tick; tick; tick;
        if (out !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x624: %0d errors", errors);
        $display("PASS: tb_ttl_74x624");
        $finish;
    end
endmodule
