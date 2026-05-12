// ttl_74x637 - 8-bit EDAC.
module ttl_74x637 (
    input  logic       mode_n,
    input  logic [7:0] data_in,
    input  logic [4:0] check_in,
    output logic [7:0] data_out,
    output logic [4:0] check_out,
    output logic       single_err, double_err
);
    function automatic [3:0] gen4(input logic [7:0] d);
        integer i, j;
        begin
            gen4 = 4'b0;
            for (j = 0; j < 4; j = j + 1)
                for (i = 0; i < 8; i = i + 1)
                    if ((((i+1) >> j) & 32'd1) != 32'd0)
                        gen4[j] = gen4[j] ^ d[i];
        end
    endfunction
    logic [3:0] c4, synd, pos;
    logic       op, overall;
    logic [7:0] corrected;
    always_comb begin
        c4         = gen4(data_in);
        op         = ^{data_in, c4};
        check_out  = {op, c4};
        synd       = c4 ^ check_in[3:0];
        overall    = (^{data_in, check_in[3:0]}) ^ check_in[4];
        corrected  = data_in;
        single_err = 0; double_err = 0;
        pos        = synd - 4'd1;
        if (mode_n) begin
            if (synd == 0 && overall == 0) ;
            else if (overall) begin
                single_err = 1;
                if (synd != 0 && synd <= 4'd8) corrected[pos[2:0]] = ~data_in[pos[2:0]];
            end else double_err = 1;
        end
        data_out = corrected;
    end
endmodule
