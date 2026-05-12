`timescale 1ns/1ps
module tb_ttl_74x634;
    logic mode_n;
    logic [31:0] data_in, data_out;
    logic [6:0] check_in, check_out;
    logic single_err, double_err;
    ttl_74x634 dut(.*);
    logic [6:0] saved;
    int errors;
    initial begin
        errors=0;
        mode_n=0; data_in=32'h12345678; check_in=0; #1;
        saved = check_out;
        mode_n=1; check_in=saved; #1;
        if (single_err || double_err) errors++;
        mode_n=1; data_in=32'h12345678 ^ 32'h0100; #1;
        if (!single_err) errors++;
        if (data_out !== 32'h12345678) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x634: %0d errors", errors);
        $display("PASS: tb_ttl_74x634");
        $finish;
    end
endmodule
