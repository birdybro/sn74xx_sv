`timescale 1ns/1ps
// Exhaustive testbench for ttl_74x3g57: all 512 input combinations checked
// against the verified single-gate function y = in2 ? in1 : ~in0 (SN74LVC1G57).
module tb_ttl_74x3g57;
    logic [2:0] in0, in1, in2, y, expected;
    ttl_74x3g57 dut (.in0(in0), .in1(in1), .in2(in2), .y(y));
    int errors;
    initial begin
        errors = 0;
        for (int v = 0; v < 512; v++) begin
            {in2, in1, in0} = v[8:0];
            #1;
            expected[0] = in2[0] ? in1[0] : ~in0[0];
            expected[1] = in2[1] ? in1[1] : ~in0[1];
            expected[2] = in2[2] ? in1[2] : ~in0[2];
            if (y !== expected) begin
                $display("Mismatch v=%0d: in2=%b in1=%b in0=%b got %b exp %b",
                         v, in2, in1, in0, y, expected);
                errors++;
            end
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x3g57: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x3g57 (512 vectors)");
        $finish;
    end
endmodule
