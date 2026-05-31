`timescale 1ns/1ps
// Reference-model testbench for ttl_74x1604 (dual 8-bit transparent latch +
// output mux). The reference mirrors the two latches. Directed checks cover
// transparent A/B selection, hold across input changes, select-toggle while
// latched (output follows the held A vs B), and a random soak.
module tb_ttl_74x1604;
    logic [7:0] a, b, q;
    logic       sel_ab, le_n;
    ttl_74x1604 dut(.a(a), .b(b), .sel_ab(sel_ab), .le_n(le_n), .q(q));

    logic [7:0] a_lat_r, b_lat_r;
    int errors;

    task automatic chk(input string t);
        #1;
        if (!le_n) begin a_lat_r = a; b_lat_r = b; end   // mirror transparent latch
        begin
            logic [7:0] exp; exp = sel_ab ? a_lat_r : b_lat_r;
            if (q !== exp) begin
                $display("Mismatch [%s]: a=%h b=%h sel=%b le_n=%b -> got %h exp %h (alat=%h blat=%h)",
                         t, a, b, sel_ab, le_n, q, exp, a_lat_r, b_lat_r);
                errors++;
            end
        end
    endtask

    logic [31:0] rnd;
    initial begin
        errors=0; a=0; b=0; sel_ab=1; le_n=1; a_lat_r=8'dx; b_lat_r=8'dx;

        // Transparent: load A and B, select each.
        le_n=0; a=8'hA5; b=8'h3C;
        sel_ab=1; chk("transp A"); sel_ab=0; chk("transp B");

        // Latch (hold), then change inputs - output must hold.
        le_n=1; a=8'hFF; b=8'h00;
        sel_ab=1; chk("hold A=A5"); sel_ab=0; chk("hold B=3C");

        // Toggle select while latched: output follows held A vs B.
        sel_ab=1; chk("sel A held"); sel_ab=0; chk("sel B held");

        // Reopen, capture new values.
        le_n=0; a=8'h0F; b=8'hF0; sel_ab=1; chk("recapture A");
        le_n=1; a=8'h55; b=8'hAA; sel_ab=0; chk("hold new B");

        // Random soak.
        rnd=$urandom(32'h1604_a5a5);
        for (int n=0;n<3000;n++) begin
            rnd=$urandom;
            a=rnd[7:0]; b=rnd[15:8]; sel_ab=rnd[16]; le_n=rnd[17];
            chk($sformatf("rand%0d", n));
        end

        if (errors!=0) $fatal(1, "tb_ttl_74x1604: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x1604 (directed + 3000 random)");
        $finish;
    end
endmodule
