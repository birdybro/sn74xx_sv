`timescale 1ns/1ps
module tb_ttl_74x7200;
    logic clk, clr_n, we, re;
    logic [8:0] din, dout;
    logic full, empty;
    ttl_74x7200 dut(.clk(clk), .clr_n(clr_n), .we(we), .re(re), .din(din), .dout(dout), .full(full), .empty(empty));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors;
    initial begin
        errors = 0;
        clk=0; clr_n=0; we=0; re=0; din=0; tick;
        if (!empty) errors++;
        clr_n=1;
        // Write some values
        we=1;
        for (int i = 0; i < 4; i++) begin din = 9'(i + 1); tick; end
        we=0;
        if (empty) errors++;
        // Read back
        re=1;
        for (int i = 0; i < 4; i++) begin
            if (dout !== 9'(i + 1)) errors++;
            tick;
        end
        re=0;
        if (!empty) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x7200: %0d errors", errors);
        $display("PASS: tb_ttl_74x7200");
        $finish;
    end
endmodule
