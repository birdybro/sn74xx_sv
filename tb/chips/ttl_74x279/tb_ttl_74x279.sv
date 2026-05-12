`timescale 1ns/1ps
module tb_ttl_74x279;
    logic [3:0] s_n, r_n, q;
    ttl_74x279 dut(.s_n(s_n), .r_n(r_n), .q(q));
    int errors;
    initial begin
        errors = 0;
        // Reset all
        s_n=4'hF; r_n=4'h0; #1;
        if (q !== 0) errors++;
        // Set bit 0
        s_n[0]=0; r_n=4'hF; #1;
        if (q[0] !== 1) errors++;
        s_n=4'hF; #1;
        if (q[0] !== 1) errors++; // hold
        if (errors != 0) $fatal(1, "tb_ttl_74x279: %0d errors", errors);
        $display("PASS: tb_ttl_74x279");
        $finish;
    end
endmodule
