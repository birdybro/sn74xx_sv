`timescale 1ns/1ps
module tb_ttl_74f456;
    logic [7:0] a, y;
    logic oe_n, par;
    ttl_74f456 dut(.a(a), .oe_n(oe_n), .y(y), .par(par));
    int errors;
    initial begin
        errors = 0;
        a=8'h55; oe_n=0; #1;
        if (y !== 8'h55 || par !== ^8'h55) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74f456: %0d errors", errors);
        $display("PASS: tb_ttl_74f456");
        $finish;
    end
endmodule
