// ttl_74x630 - 16-bit EDAC (variant of 74x616).
module ttl_74x630 (
    input  logic        mode_n,
    input  logic [15:0] data_in,
    input  logic [5:0]  check_in,
    output logic [15:0] data_out,
    output logic [5:0]  check_out,
    output logic        single_err, double_err
);
    function automatic [4:0] gen5(input logic [15:0] d);
        integer i, j;
        begin
            gen5 = 5'b0;
            for (j = 0; j < 5; j = j + 1)
                for (i = 0; i < 16; i = i + 1)
                    if ((((i+1) >> j) & 32'd1) != 32'd0)
                        gen5[j] = gen5[j] ^ d[i];
        end
    endfunction
    logic [4:0]  c5, synd, pos;
    logic        op, overall;
    logic [15:0] corrected;
    always_comb begin
        c5         = gen5(data_in);
        op         = ^{data_in, c5};
        check_out  = {op, c5};
        synd       = c5 ^ check_in[4:0];
        overall    = (^{data_in, check_in[4:0]}) ^ check_in[5];
        corrected  = data_in;
        single_err = 0; double_err = 0;
        pos        = synd - 5'd1;
        if (mode_n) begin
            if (synd == 0 && overall == 0) ;
            else if (overall) begin
                single_err = 1;
                if (synd != 0 && synd <= 5'd16) corrected[pos[3:0]] = ~data_in[pos[3:0]];
            end else double_err = 1;
        end
        data_out = corrected;
    end
endmodule
