`timescale 1ns/1ps
// Exhaustive testbench for ttl_74x1g57. The input space is 3 bits (8 vectors),
// so every combination is checked, with the expected column taken verbatim
// from datasheet Table 1 (Function Table).
module tb_ttl_74x1g57;
    logic in0, in1, in2, y, expected;
    ttl_74x1g57 dut (.in0(in0), .in1(in1), .in2(in2), .y(y));
    int errors;

    // Datasheet Table 1, indexed as {in2, in1, in0}.
    function automatic logic exp_y(input logic i2, i1, i0);
        return i2 ? i1 : ~i0;
    endfunction

    initial begin
        errors = 0;
        for (int i = 0; i < 8; i++) begin
            {in2, in1, in0} = i[2:0];
            #1;
            expected = exp_y(in2, in1, in0);
            if (y !== expected) begin
                $display("Mismatch at in2=%b in1=%b in0=%b: got %b expected %b",
                         in2, in1, in0, y, expected);
                errors++;
            end
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x1g57: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x1g57 (8 vectors)");
        $finish;
    end
endmodule
