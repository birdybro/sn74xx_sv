`timescale 1ns/1ps
module tb_ttl_74x262;
    logic clk;
    logic [6:0] addr;
    logic [44:0] data_in, data_out;
    logic we_n, cs_n;
    ttl_74x262 dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .data_out(data_out));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; cs_n = 0; we_n = 0;
        addr = 7'd0; data_in = 45'h0; tick;
        we_n = 1;
        addr = 7'd0; #1;
        if (data_out !== 45'h0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x262: %0d errors", errors);
        $display("PASS: tb_ttl_74x262");
        $finish;
    end
endmodule
