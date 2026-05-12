`timescale 1ns/1ps
module tb_ttl_74x89;
    logic clk;
    logic [3:0] addr, data_in, data_out_n;
    logic we_n, cs_n;
    ttl_74x89 dut(.clk(clk), .addr(addr), .data_in(data_in), .we_n(we_n), .cs_n(cs_n), .data_out_n(data_out_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk = 0; cs_n = 1; we_n = 1; addr = 0; data_in = 0; #1;
        cs_n = 0; we_n = 0;
        addr = 4'd5; data_in = 4'hA; tick;
        addr = 4'd10; data_in = 4'h3; tick;
        we_n = 1;
        addr = 4'd5; #1; if (data_out_n !== ~4'hA) errors++;
        addr = 4'd10; #1; if (data_out_n !== ~4'h3) errors++;
        cs_n = 1; #1; if (data_out_n !== 4'h0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x89: %0d errors", errors);
        $display("PASS: tb_ttl_74x89");
        $finish;
    end
endmodule
