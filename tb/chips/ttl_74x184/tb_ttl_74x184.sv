`timescale 1ns/1ps
module tb_ttl_74x184;
    logic [7:0] bcd;
    logic [5:0] bin;
    ttl_74x184 dut(.bcd(bcd), .bin(bin));
    int errors;
    initial begin
        errors = 0;
        bcd = 8'h00; #1; if (bin !== 6'd0)  errors++;
        bcd = 8'h05; #1; if (bin !== 6'd5)  errors++;
        bcd = 8'h09; #1; if (bin !== 6'd9)  errors++;
        bcd = 8'h10; #1; if (bin !== 6'd10) errors++;
        bcd = 8'h39; #1; if (bin !== 6'd39) errors++;
        bcd = 8'h63; #1; if (bin !== 6'd63) errors++;
        bcd = 8'h0A; #1; if (bin !== 6'd0)  errors++; // invalid
        if (errors != 0) $fatal(1, "tb_ttl_74x184: %0d errors", errors);
        $display("PASS: tb_ttl_74x184");
        $finish;
    end
endmodule
