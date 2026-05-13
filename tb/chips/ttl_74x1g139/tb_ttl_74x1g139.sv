`timescale 1ns/1ps
module tb_ttl_74x1g139;
    logic en_n;
    logic [1:0] sel;
    logic [3:0] y_n;
    ttl_74x1g139 dut(.*);
    int errors;
    initial begin
        errors = 0;
        en_n = 0; sel = 2'b10; #1;
        if (y_n !== 4'b1011) errors++;
        en_n = 1; #1;
        if (y_n !== 4'hF) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g139: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g139");
        $finish;
    end
endmodule
