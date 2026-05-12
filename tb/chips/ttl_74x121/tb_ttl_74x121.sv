`timescale 1ns/1ps
module tb_ttl_74x121;
    logic clk, a1_n, a2_n, b, q, q_n;
    ttl_74x121 #(.PULSE_CYCLES(4)) dut(.clk(clk), .a1_n(a1_n), .a2_n(a2_n), .b(b), .q(q), .q_n(q_n));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors, pulse_len;
    initial begin
        errors = 0; pulse_len = 0;
        clk = 0; a1_n = 1; a2_n = 1; b = 0; #1;
        // Trigger via b
        b = 1; tick;
        for (int i = 0; i < 10; i++) begin
            if (q) pulse_len++;
            tick;
        end
        if (pulse_len != 4) begin
            $display("FAIL: pulse_len=%0d expected 4", pulse_len);
            errors++;
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x121: %0d errors", errors);
        $display("PASS: tb_ttl_74x121");
        $finish;
    end
endmodule
