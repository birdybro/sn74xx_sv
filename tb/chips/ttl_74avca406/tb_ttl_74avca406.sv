`timescale 1ns/1ps
module tb_ttl_74avca406;
    logic oe_n, dir;
    logic [7:0] a_in, b_in, a_out, b_out;
    logic a_oe_n, b_oe_n;
    ttl_74avca406 dut(.oe_n(oe_n), .dir(dir), .a_in(a_in), .b_in(b_in), .a_out(a_out), .b_out(b_out), .a_oe_n(a_oe_n), .b_oe_n(b_oe_n));
    int errors;
    initial begin
        errors = 0;
        b_in = 0;
        oe_n=0; dir=1; a_in=8'h5A; #1;
        if (b_out !== 8'h5A) errors++;
        dir=0; b_in=8'hC3; #1;
        if (a_out !== 8'hC3) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74avca406: %0d errors", errors);
        $display("PASS: tb_ttl_74avca406");
        $finish;
    end
endmodule
