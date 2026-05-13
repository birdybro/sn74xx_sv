`timescale 1ns/1ps
module tb_ttl_74x1g29;
    logic en_n, y0_n, y1_n, y2_n;
    logic [1:0] sel;
    ttl_74x1g29 dut(.*);
    int errors;
    initial begin
        errors = 0;
        en_n = 0; sel = 2'b01; #1;
        if (y0_n !== 1 || y1_n !== 0 || y2_n !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g29: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g29");
        $finish;
    end
endmodule
