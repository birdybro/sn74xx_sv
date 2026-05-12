`timescale 1ns/1ps
module tb_ttl_74x186;
    logic [5:0] addr;
    logic [7:0] data;
    ttl_74x186 dut(.addr(addr), .data(data));
    int errors;
    initial begin
        errors = 0;
        for (int i = 0; i < 64; i++) begin
            addr = i[5:0]; #1;
            if (data !== 8'h00) errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x186: %0d errors", errors);
        $display("PASS: tb_ttl_74x186");
        $finish;
    end
endmodule
