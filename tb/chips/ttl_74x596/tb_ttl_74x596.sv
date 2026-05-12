`timescale 1ns/1ps
module tb_ttl_74x596;
    logic clk_shift, srclr_n, clk_lat, oe_n, sin;
    logic [7:0] q;
    ttl_74x596 dut(.*);
    task automatic ts; clk_shift=0; #1; clk_shift=1; #1; clk_shift=0; #1; endtask
    task automatic tl; clk_lat=0; #1; clk_lat=1; #1; clk_lat=0; #1; endtask
    int errors;
    initial begin
        errors=0; clk_shift=0; clk_lat=0; oe_n=0; sin=0;
        srclr_n=1; #1; srclr_n=0; #1; srclr_n=1;
        sin=1; ts; sin=0; ts; sin=1; ts; sin=0; ts;
        sin=1; ts; sin=0; ts; sin=1; ts; sin=0; ts;
        tl;
        if (q !== 8'b10101010) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x596: %0d errors", errors);
        $display("PASS: tb_ttl_74x596");
        $finish;
    end
endmodule
