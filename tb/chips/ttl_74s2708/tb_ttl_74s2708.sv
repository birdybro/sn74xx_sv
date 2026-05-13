`timescale 1ns/1ps
module tb_ttl_74s2708;
    logic clk;
    logic [9:0] addr;
    logic [7:0] data_in, data_out;
    logic we_n, cs_n;
    ttl_74s2708 dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .data_out(data_out));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; cs_n = 0; we_n = 0;
        addr = 10'd5; data_in = 8'hA5; tick;
        we_n = 1;
        addr = 10'd5; #1;
        if (data_out !== 8'hA5) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74s2708: %0d errors", errors);
        $display("PASS: tb_ttl_74s2708");
        $finish;
    end
endmodule
