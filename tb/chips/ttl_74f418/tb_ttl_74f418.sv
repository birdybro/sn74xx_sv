`timescale 1ns/1ps
module tb_ttl_74f418;
    logic [31:0] data;
    logic [6:0] check, syndrome;
    logic single_err, double_err;
    ttl_74f418 dut(.data(data), .check(check), .syndrome(syndrome), .single_err(single_err), .double_err(double_err));
    int errors;
    initial begin
        errors = 0;
        data=0; check=0; #1;
        if (syndrome !== 0 || single_err || double_err) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74f418: %0d errors", errors);
        $display("PASS: tb_ttl_74f418");
        $finish;
    end
endmodule
