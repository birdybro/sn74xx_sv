`timescale 1ns/1ps
module tb_ttl_74x462;
    logic d_in, d_out;
    ttl_74x462 dut(.d_in(d_in), .d_out(d_out));
    int errors;
    initial begin
        errors = 0;
        d_in=0; #1; if (d_out !== 0) errors++;
        d_in=1; #1; if (d_out !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x462: %0d errors", errors);
        $display("PASS: tb_ttl_74x462");
        $finish;
    end
endmodule
