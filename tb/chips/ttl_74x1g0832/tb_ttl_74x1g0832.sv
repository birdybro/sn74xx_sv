`timescale 1ns/1ps
module tb_ttl_74x1g0832;
    logic a, b, c, y;
    ttl_74x1g0832 dut(.*);
    int errors;
    initial begin
        errors = 0;
        a = 1; b = 1; c = 0; #1; if (y !== 1) errors++;
        a = 0; c = 0; #1; if (y !== 0) errors++;
        c = 1; #1; if (y !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x1g0832: %0d errors", errors);
        $display("PASS: tb_ttl_74x1g0832");
        $finish;
    end
endmodule
