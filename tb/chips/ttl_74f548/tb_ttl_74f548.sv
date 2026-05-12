`timescale 1ns/1ps
module tb_ttl_74f548;
    logic [2:0] a;
    logic g1, g2_n, ack_n, ack_out_n;
    logic [7:0] y_n;
    ttl_74f548 dut(.*);
    int errors;
    initial begin
        errors=0; g1=1; g2_n=0; ack_n=0;
        a=3'd4; #1; if (y_n !== 8'hEF) errors++;
        if (ack_out_n !== 0) errors++;
        g1=0; #1; if (y_n !== 8'hFF) errors++;
        if (ack_out_n !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74f548: %0d errors", errors);
        $display("PASS: tb_ttl_74f548");
        $finish;
    end
endmodule
