`timescale 1ns/1ps
module tb_ttl_74x500;
    logic [5:0] threshold_select, code;
    ttl_74x500 dut(.threshold_select(threshold_select), .code(code));
    int errors;
    initial begin
        errors = 0;
        threshold_select=6'd25; #1; if (code !== 6'd25) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x500: %0d errors", errors);
        $display("PASS: tb_ttl_74x500");
        $finish;
    end
endmodule
