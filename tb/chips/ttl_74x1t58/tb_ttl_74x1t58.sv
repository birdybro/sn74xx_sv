`timescale 1ns/1ps
// Exhaustive testbench for ttl_74x1t58: all 8 input combinations checked
// against the datasheet Function Table (= '1G58 logic, inputs renamed A/B/C).
module tb_ttl_74x1t58;
    logic a, b, c, y, expected;
    ttl_74x1t58 dut (.a(a), .b(b), .c(c), .y(y));
    int errors;

    function automatic logic exp_y(input logic cc, bb, aa);
        return cc ? ~bb : aa;
    endfunction

    initial begin
        errors = 0;
        for (int i = 0; i < 8; i++) begin
            {c, b, a} = i[2:0];
            #1;
            expected = exp_y(c, b, a);
            if (y !== expected) begin
                $display("Mismatch at c=%b b=%b a=%b: got %b expected %b",
                         c, b, a, y, expected);
                errors++;
            end
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x1t58: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x1t58 (8 vectors)");
        $finish;
    end
endmodule
