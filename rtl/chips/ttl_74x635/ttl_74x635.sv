// ttl_74x635 - 32-bit EDAC.
module ttl_74x635 (
    input  logic        mode_n,
    input  logic [31:0] data_in,
    input  logic [6:0]  check_in,
    output logic [31:0] data_out,
    output logic [6:0]  check_out,
    output logic        single_err, double_err
);
    function automatic [5:0] gen6(input logic [31:0] d);
        integer i, j;
        begin
            gen6 = 6'b0;
            for (j = 0; j < 6; j = j + 1)
                for (i = 0; i < 32; i = i + 1)
                    if ((((i+1) >> j) & 32'd1) != 32'd0)
                        gen6[j] = gen6[j] ^ d[i];
        end
    endfunction
    logic [5:0]  c6, synd, pos;
    logic        op, overall;
    logic [31:0] corrected;
    always_comb begin
        c6         = gen6(data_in);
        op         = ^{data_in, c6};
        check_out  = {op, c6};
        synd       = c6 ^ check_in[5:0];
        overall    = (^{data_in, check_in[5:0]}) ^ check_in[6];
        corrected  = data_in;
        single_err = 0; double_err = 0;
        pos        = synd - 6'd1;
        if (mode_n) begin
            if (synd == 0 && overall == 0) ;
            else if (overall) begin
                single_err = 1;
                if (synd != 0 && synd <= 6'd32) corrected[pos[4:0]] = ~data_in[pos[4:0]];
            end else double_err = 1;
        end
        data_out = corrected;
    end
endmodule
