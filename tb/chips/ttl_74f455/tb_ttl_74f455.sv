`timescale 1ns/1ps
module tb_ttl_74f455;
    logic [7:0] a, y;
    logic oe_n, par;
    ttl_74f455 dut(.a(a), .oe_n(oe_n), .y(y), .par(par));
    int errors;
    initial begin
        errors = 0;
        a=8'hAA; oe_n=0; #1;
        if (y !== ~8'hAA || par !== ^8'hAA) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74f455: %0d errors", errors);
        $display("PASS: tb_ttl_74f455");
        $finish;
    end
endmodule
