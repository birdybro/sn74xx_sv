`timescale 1ns/1ps
// Exhaustive testbench for ttl_74x1g99. The input space is 5 bits
// (oe_n, d, c, b, a) = 32 vectors, all checked. The enabled core function
// core = d ^ (c ? b : a) reproduces all 16 datasheet Function Table rows;
// the disabled output is the muxed-zero representation of high-Z.
module tb_ttl_74x1g99;
    logic oe_n, a, b, c, d, y, expected;
    ttl_74x1g99 dut (.oe_n(oe_n), .a(a), .b(b), .c(c), .d(d), .y(y));
    int errors;

    function automatic logic exp_y(input logic en, dd, cc, bb, aa);
        return en ? 1'b0 : (dd ^ (cc ? bb : aa));
    endfunction

    initial begin
        errors = 0;
        for (int i = 0; i < 32; i++) begin
            {oe_n, d, c, b, a} = i[4:0];
            #1;
            expected = exp_y(oe_n, d, c, b, a);
            if (y !== expected) begin
                $display("Mismatch at oe_n=%b d=%b c=%b b=%b a=%b: got %b expected %b",
                         oe_n, d, c, b, a, y, expected);
                errors++;
            end
        end
        if (errors != 0) $fatal(1, "tb_ttl_74x1g99: %0d mismatches", errors);
        $display("PASS: tb_ttl_74x1g99 (32 vectors)");
        $finish;
    end
endmodule
