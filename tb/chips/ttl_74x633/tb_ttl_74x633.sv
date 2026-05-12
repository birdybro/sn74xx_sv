`timescale 1ns/1ps
module tb_ttl_74x633;
    logic mode_n;
    logic [31:0] data_in, data_out, orig_data;
    logic [6:0] check_in, check_out;
    logic [3:0] byte_we;
    logic single_err, double_err;
    ttl_74x633 dut(.*);
    logic [6:0] saved;
    int errors;
    initial begin
        errors=0; orig_data=0; byte_we=4'b0000;
        mode_n=0; data_in=32'hDEADBEEF; check_in=0; #1;
        saved = check_out;
        mode_n=1; check_in=saved; #1;
        if (single_err || double_err) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x633: %0d errors", errors);
        $display("PASS: tb_ttl_74x633");
        $finish;
    end
endmodule
