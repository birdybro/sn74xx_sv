`timescale 1ns/1ps
module tb_ttl_74x410;
    logic clk;
    logic [3:0] addr, data_in, data_out;
    logic we_n, cs_n;
    ttl_74x410 dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .data_out(data_out));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; cs_n=0; we_n=0;
        addr=4'd5; data_in=4'hA; tick;
        we_n=1;
        addr=4'd5; tick;
        if (data_out !== 4'hA) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x410: %0d errors", errors);
        $display("PASS: tb_ttl_74x410");
        $finish;
    end
endmodule
