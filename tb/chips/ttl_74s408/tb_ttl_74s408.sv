`timescale 1ns/1ps
module tb_ttl_74s408;
    logic clk, ras_in, cas_in, ras_n, cas_n;
    logic [8:0] row_addr, col_addr, dram_addr;
    ttl_74s408 dut(.clk(clk), .ras_in(ras_in), .cas_in(cas_in), .row_addr(row_addr), .col_addr(col_addr), .ras_n(ras_n), .cas_n(cas_n), .dram_addr(dram_addr));
    int errors;
    initial begin
        errors = 0;
        clk=0; row_addr=9'h1AB; col_addr=9'h0F0;
        ras_in=1; cas_in=0; #1;
        if (dram_addr !== 9'h1AB || ras_n !== 0) errors++;
        cas_in=1; #1;
        if (dram_addr !== 9'h0F0 || cas_n !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74s408: %0d errors", errors);
        $display("PASS: tb_ttl_74s408");
        $finish;
    end
endmodule
