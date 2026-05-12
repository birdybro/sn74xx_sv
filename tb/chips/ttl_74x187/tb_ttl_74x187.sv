`timescale 1ns/1ps
module tb_ttl_74x187;
    logic [7:0] addr;
    logic [3:0] data;
    ttl_74x187 dut(.addr(addr), .data(data));
    int errors;
    initial begin
        errors = 0;
        for (int i = 0; i < 256; i++) begin
            addr = i[7:0]; #1;
            if (data !== 4'h0) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x187: %0d errors", errors);
        $display("PASS: tb_ttl_74x187");
        $finish;
    end
endmodule
