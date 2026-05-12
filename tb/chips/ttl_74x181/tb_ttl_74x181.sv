`timescale 1ns/1ps
module tb_ttl_74x181;
    logic [3:0] a, b, s, f;
    logic m, cn, cn_p_4, a_eq_b, p_n, g_n;
    ttl_74x181 dut(.a(a), .b(b), .s(s), .m(m), .cn(cn), .f(f),
                   .cn_p_4(cn_p_4), .a_eq_b(a_eq_b), .p_n(p_n), .g_n(g_n));
    int errors;
    initial begin
        errors = 0;
        // Logic: A ^ B
        m=1; cn=0; a=4'hA; b=4'h5; s=4'h6; #1;
        if (f !== (4'hA ^ 4'h5)) errors++;
        // Logic: A & B
        s=4'hB; #1;
        if (f !== (4'hA & 4'h5)) errors++;
        // Logic: A | B
        s=4'hE; #1;
        if (f !== (4'hA | 4'h5)) errors++;
        // Arithmetic: A + B + Cin
        m=0; s=4'h9; a=4'h3; b=4'h2; cn=0; #1;
        if (f !== 4'h5) errors++;
        cn=1; #1;
        if (f !== 4'h6) errors++;
        // Arithmetic: A + B with carry-out
        a=4'hF; b=4'h1; cn=0; #1;
        if (f !== 4'h0 || cn_p_4 !== 1) errors++;
        if (errors != 0) $fatal(1, "tb_ttl_74x181: %0d errors", errors);
        $display("PASS: tb_ttl_74x181");
        $finish;
    end
endmodule
