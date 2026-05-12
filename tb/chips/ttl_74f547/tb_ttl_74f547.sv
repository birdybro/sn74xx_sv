`timescale 1ns/1ps
module tb_ttl_74f547;
    logic le, ack_n, ack_out_n;
    logic [2:0] a;
    logic [7:0] y_n;
    ttl_74f547 dut(.*);
    int errors;
    initial begin
        errors=0; ack_n=0; le=1; a=3'd2; #1;
        if (y_n !== 8'hFB) errors++;
        le=0; a=3'd5; #1;
        if (y_n !== 8'hFB) errors++;
        if (ack_out_n !== 0) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74f547: %0d errors", errors);
        $display("PASS: tb_ttl_74f547");
        $finish;
    end
endmodule
