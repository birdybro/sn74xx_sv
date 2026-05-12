`timescale 1ns/1ps
module tb_ttl_74x321;
    logic clk_in, clr_n, clk_out, div2, div4;
    ttl_74x321 dut(.clk_in(clk_in), .clr_n(clr_n), .clk_out(clk_out), .div2(div2), .div4(div4));
    task automatic tick; clk_in=0; #1; clk_in=1; #1; clk_in=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk_in=0; clr_n=0; #1;
        if (div2 !== 0 || div4 !== 0) errors++;
        clr_n=1;
        tick; if (div2 !== 1) errors++;
        tick; if (div2 !== 0 || div4 !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x321: %0d errors", errors);
        $display("PASS: tb_ttl_74x321");
        $finish;
    end
endmodule
