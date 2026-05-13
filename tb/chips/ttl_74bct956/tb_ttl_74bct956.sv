`timescale 1ns/1ps
module tb_ttl_74bct956;
    logic leab_n, oeab_n, ceab_n, leba_n, oeba_n, ceba_n;
    logic [7:0] a_in, b_in, a_out, b_out;
    logic a_hiz, b_hiz;
    ttl_74bct956 dut(.*);
    int errors;
    initial begin
        errors = 0;
        leab_n = 0; oeab_n = 0; ceab_n = 0;
        leba_n = 1; oeba_n = 1; ceba_n = 1;
        a_in = 8'hA5; b_in = 0; #1;
        if (b_out !== 8'hA5) errors++;
        // latch A->B then disable LE; output should hold
        leab_n = 1; #1;
        a_in = 8'h00; #1;
        if (b_out !== 8'hA5) errors++;
        // B->A direction
        leab_n = 1; oeab_n = 1; ceab_n = 1;
        leba_n = 0; oeba_n = 0; ceba_n = 0;
        b_in = 8'h3C; #1;
        if (a_out !== 8'h3C) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74bct956: %0d errors", errors);
        $display("PASS: tb_ttl_74bct956");
        $finish;
    end
endmodule
