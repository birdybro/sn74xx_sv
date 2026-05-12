`timescale 1ns/1ps
module tb_ttl_74x297;
    logic clk, clr_n, inc, dec;
    logic [7:0] filter_out;
    ttl_74x297 dut(.clk(clk), .clr_n(clr_n), .inc(inc), .dec(dec), .filter_out(filter_out));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=1; inc=0; dec=0; #1;
        clr_n=0; #1;
        if (filter_out !== 8'h80) errors++;
        clr_n=1; #1;
        inc=1; dec=0; tick; tick; tick;
        if (filter_out !== 8'h83) errors++;
        inc=0; dec=1; tick;
        if (filter_out !== 8'h82) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x297: %0d errors", errors);
        $display("PASS: tb_ttl_74x297");
        $finish;
    end
endmodule
