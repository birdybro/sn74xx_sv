`timescale 1ns/1ps
module tb_ttl_74x124;
    logic [1:0] enable, freq_in, freq_out;
    ttl_74x124 dut(.enable(enable), .freq_in(freq_in), .freq_out(freq_out));
    int errors;
    initial begin
        errors = 0;
        enable = 2'b00; freq_in = 2'b11; #1;
        if (freq_out !== 0) errors++;
        enable = 2'b11; #1;
        if (freq_out !== 2'b11) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x124: %0d errors", errors);
        $display("PASS: tb_ttl_74x124");
        $finish;
    end
endmodule
