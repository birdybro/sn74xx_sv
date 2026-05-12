`timescale 1ns/1ps
module tb_ttl_74x84;
    logic clk;
    logic [3:0] addr;
    logic data_in, we_n, cs_n, data_out;
    ttl_74x84 dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .data_out(data_out));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; cs_n = 1; we_n = 1; addr = 0; data_in = 0; #1;
        cs_n = 0; we_n = 0; addr = 4'd7; data_in = 1'b1; tick;
        addr = 4'd3; data_in = 1'b0; tick;
        we_n = 1;
        addr = 4'd7; #1; if (data_out !== 1'b1) errors++;
        addr = 4'd3; #1; if (data_out !== 1'b0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x84: %0d errors", errors);
        $display("PASS: tb_ttl_74x84");
        $finish;
    end
endmodule
