`timescale 1ns/1ps
module tb_ttl_74x616;
    logic mode_n;
    logic [15:0] data_in, data_out;
    logic [5:0] check_in, check_out;
    logic single_err, double_err;
    ttl_74x616 dut(.*);
    logic [5:0] saved;
    int errors;
    initial begin
        errors=0;
        // generate
        mode_n=0; data_in=16'hABCD; check_in=6'b0; #1;
        saved = check_out;
        // check, no error
        mode_n=1; check_in=saved; #1;
        if (single_err || double_err) errors++;
        if (data_out !== 16'hABCD) errors++;
        // flip one bit
        mode_n=1; data_in=16'hABCD ^ 16'h0040; check_in=saved; #1;
        if (!single_err) errors++;
        if (data_out !== 16'hABCD) errors++;
        // flip two bits
        mode_n=1; data_in=16'hABCD ^ 16'h0044; check_in=saved; #1;
        if (!double_err) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x616: %0d errors", errors);
        $display("PASS: tb_ttl_74x616");
        $finish;
    end
endmodule
