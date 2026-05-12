`timescale 1ns/1ps
module tb_ttl_74x189;
    logic clk;
    logic [3:0] addr, data_in, data_out_n;
    logic we_n, cs_n;
    ttl_74x189 dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .data_out_n(data_out_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; cs_n = 0; we_n = 0;
        addr = 4'd3; data_in = 4'hA; tick;
        we_n = 1;
        addr = 4'd3; #1; if (data_out_n !== ~4'hA) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x189: %0d errors", errors);
        $display("PASS: tb_ttl_74x189");
        $finish;
    end
endmodule
