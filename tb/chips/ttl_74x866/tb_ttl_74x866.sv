`timescale 1ns/1ps
// Reference-model testbench for ttl_74x866. A behavioral model mirrors the
// three transparent latches (P, Q, output), the Q clear, signed/unsigned
// compare, and the cascade. Directed checks cover latch transparency/hold,
// Q-clear, both compare modes, and cascade-on-equal; followed by 3000 random
// steps.
module tb_ttl_74x866;
    logic       l_a_n, ple, qle, clr_q_n, ole, p_gt_qin, p_lt_qin;
    logic [7:0] p, q;
    logic       p_gt_qout, p_lt_qout, p_eq_qout;
    ttl_74x866 dut(.l_a_n(l_a_n), .ple(ple), .qle(qle), .clr_q_n(clr_q_n),
        .ole(ole), .p_gt_qin(p_gt_qin), .p_lt_qin(p_lt_qin), .p(p), .q(q),
        .p_gt_qout(p_gt_qout), .p_lt_qout(p_lt_qout), .p_eq_qout(p_eq_qout));

    // Reference latch state.
    logic [7:0] pl, ql;
    logic       ogt, olt, oeq;
    int errors;

    task automatic chk(input string t);
        logic gt, lt, eq, gtc, ltc;
        #1;
        if (ple) pl = p;
        if (!clr_q_n) ql = 8'd0; else if (qle) ql = q;
        eq = (pl == ql);
        if (l_a_n) begin gt = (pl > ql);                 lt = (pl < ql);                 end
        else       begin gt = ($signed(pl) > $signed(ql)); lt = ($signed(pl) < $signed(ql)); end
        gtc = gt | (eq & p_gt_qin);
        ltc = lt | (eq & p_lt_qin);
        if (ole) begin ogt = gtc; olt = ltc; oeq = eq; end
        if (p_gt_qout !== ogt || p_lt_qout !== olt || p_eq_qout !== oeq) begin
            $display("Mismatch [%s]: pl=%h ql=%h la_n=%b -> got g=%b l=%b e=%b exp g=%b l=%b e=%b",
                     t, pl, ql, l_a_n, p_gt_qout, p_lt_qout, p_eq_qout, ogt, olt, oeq);
            errors++;
        end
    endtask

    logic [31:0] rnd;
    initial begin
        errors=0;
        l_a_n=1; ple=1; qle=1; clr_q_n=1; ole=1; p_gt_qin=0; p_lt_qin=0; p=0; q=0;
        pl=8'dx; ql=8'dx; ogt=1'bx; olt=1'bx; oeq=1'bx;

        // Transparent load, equal.
        p=8'h42; q=8'h42; chk("eq");
        // P > Q (unsigned).
        p=8'hC0; q=8'h10; chk("gt unsigned");
        // Signed: 0xC0 = -64 < 0x10 = +16.
        l_a_n=0; chk("signed lt"); l_a_n=1;
        // Latch hold: freeze P, change input.
        p=8'h55; chk("pre-hold"); ple=0; p=8'hFF; chk("p held"); ple=1;
        // Q hold.
        q=8'h33; chk("q load"); qle=0; q=8'h00; chk("q held"); qle=1;
        // Q clear.
        clr_q_n=0; chk("q clr"); clr_q_n=1;
        // Output latch hold.
        p=8'h10; q=8'h20; chk("lt"); ole=0; p=8'hF0; chk("out held"); ole=1; chk("out open");
        // Cascade on equal.
        p=8'h7E; q=8'h7E; p_gt_qin=1; p_lt_qin=0; chk("casc gt");
        p_gt_qin=0; p_lt_qin=1; chk("casc lt");
        p_gt_qin=0; p_lt_qin=0;

        rnd=$urandom(32'h0866_1234);
        for (int n=0; n<3000; n++) begin
            rnd=$urandom;
            l_a_n=rnd[0]; ple=rnd[1]; qle=rnd[2]; clr_q_n=rnd[3]; ole=rnd[4];
            p_gt_qin=rnd[5]; p_lt_qin=rnd[6]; p=rnd[15:8]; q=rnd[23:16];
            chk($sformatf("rand%0d", n));
        end

        if (errors!=0) $fatal(1, "tb_ttl_74x866: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x866 (directed + 3000 random)");
        $finish;
    end
endmodule
