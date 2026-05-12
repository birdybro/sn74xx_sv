`timescale 1ns/1ps
module tb_ttl_74x294;
    logic clk, clr_n, q;
    logic [4:0] div_sel;
    ttl_74x294 dut(.clk(clk), .clr_n(clr_n), .div_sel(div_sel), .q(q));
    task automatic tick; clk=0; #1; clk=1; #1; clk=0; #1; endtask
    int errors, toggles;
    logic prev_q;
    initial begin
        errors = 0; toggles = 0;
        clk=0; clr_n=0; div_sel=5'd2; #1;
        clr_n=1;
        for (int i = 0; i < 32; i++) begin
            prev_q = q;
            tick;
            if (q !== prev_q) toggles++;
        end
        if (toggles != 8) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x294: %0d errors", errors);
        $display("PASS: tb_ttl_74x294");
        $finish;
    end
endmodule
