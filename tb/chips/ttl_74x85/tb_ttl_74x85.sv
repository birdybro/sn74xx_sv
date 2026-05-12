`timescale 1ns/1ps

module tb_ttl_74x85;
    logic [3:0] a, b;
    logic i_a_gt_b, i_a_eq_b, i_a_lt_b;
    logic a_gt_b, a_eq_b, a_lt_b;
    logic exp_gt, exp_eq, exp_lt;

    ttl_74x85 dut (
        .a(a), .b(b),
        .i_a_gt_b(i_a_gt_b), .i_a_eq_b(i_a_eq_b), .i_a_lt_b(i_a_lt_b),
        .a_gt_b(a_gt_b), .a_eq_b(a_eq_b), .a_lt_b(a_lt_b)
    );

    int errors;
    initial begin
        errors = 0;
        // Standalone: i_a_eq_b=1, others 0
        i_a_gt_b = 1'b0; i_a_eq_b = 1'b1; i_a_lt_b = 1'b0;
        for (int i = 0; i < 256; i++) begin
            a = i[3:0]; b = i[7:4]; #1;
            exp_gt = (a > b);
            exp_eq = (a == b);
            exp_lt = (a < b);
            if (a_gt_b !== exp_gt || a_eq_b !== exp_eq || a_lt_b !== exp_lt) begin
                $display("FAIL standalone a=%h b=%h got gt=%b eq=%b lt=%b",
                         a, b, a_gt_b, a_eq_b, a_lt_b);
                errors++;
            end
        end

        // Cascade-passthrough: a==b, varying cascade inputs
        a = 4'h5; b = 4'h5;
        for (int j = 0; j < 8; j++) begin
            i_a_gt_b = j[0]; i_a_eq_b = j[1]; i_a_lt_b = j[2]; #1;
            if (a_gt_b !== i_a_gt_b || a_eq_b !== i_a_eq_b || a_lt_b !== i_a_lt_b) errors++;
        end

        if (errors != 0) $fatal(1, "tb_ttl_74x85: %0d errors", errors);
        $display("PASS: tb_ttl_74x85 (256 + 8 vectors)");
        $finish;
    end
endmodule
