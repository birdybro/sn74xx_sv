`timescale 1ns/1ps
module tb_ttl_74x505;
    logic clk, start_n, done;
    logic [7:0] analog_code, q;
    ttl_74x505 dut(.clk(clk), .start_n(start_n), .analog_code(analog_code), .q(q), .done(done));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors=0; analog_code=8'd147; start_n=0; clk=0; tick;
        start_n=1;
        repeat (8) tick;
        if (!done) errors++;
        if (q !== 8'd147) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x505: %0d errors q=%0d", errors, q);
        $display("PASS: tb_ttl_74x505");
        $finish;
    end
endmodule
