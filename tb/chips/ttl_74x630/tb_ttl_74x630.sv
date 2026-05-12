`timescale 1ns/1ps
module tb_ttl_74x630;
    logic mode_n;
    logic [15:0] data_in, data_out;
    logic [5:0] check_in, check_out;
    logic single_err, double_err;
    ttl_74x630 dut(.*);
    logic [5:0] saved;
    int errors;
    initial begin
        errors=0;
        mode_n=0; data_in=16'h5555; check_in=0; #1;
        saved = check_out;
        mode_n=1; check_in=saved; #1;
        if (single_err || double_err) errors++;
        mode_n=1; data_in=16'h5555 ^ 16'h0001; #1;
        if (!single_err) errors++;
        if (data_out !== 16'h5555) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x630: %0d errors", errors);
        $display("PASS: tb_ttl_74x630");
        $finish;
    end
endmodule
