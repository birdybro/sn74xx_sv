// ttl_74x616 - 16-bit parallel error detection and correction (SEC-DED, Hamming).
// generate (mode_n=0): produce 6-bit check from data.
// check    (mode_n=1): compare check and produce corrected data, single/double error flags.
module ttl_74x616 (
    input  logic        mode_n,
    input  logic [15:0] data_in,
    input  logic [5:0]  check_in,
    output logic [15:0] data_out,
    output logic [5:0]  check_out,
    output logic        single_err,
    output logic        double_err
);
    function automatic [4:0] gen5(input logic [15:0] d);
        integer i, j;
        begin
            gen5 = 5'b0;
            for (j = 0; j < 5; j = j + 1) begin
                for (i = 0; i < 16; i = i + 1) begin
                    if ((((i+1) >> j) & 32'd1) != 32'd0)
                        gen5[j] = gen5[j] ^ d[i];
                end
            end
        end
    endfunction

    logic [4:0] c5;
    logic       op;
    logic [4:0] synd;
    logic       overall;
    logic [15:0] corrected;
    logic [4:0]  pos;

    always_comb begin
        c5  = gen5(data_in);
        op  = ^{data_in, c5};                 // even-parity over data+generated check
        check_out = {op, c5};

        synd      = c5 ^ check_in[4:0];
        // overall_received parity vs recomputed parity of received word
        overall   = (^{data_in, check_in[4:0]}) ^ check_in[5];
        corrected = data_in;
        single_err = 0;
        double_err = 0;
        pos = synd - 5'd1;
        if (mode_n) begin
            if (synd == 0 && overall == 0) begin
                // no error
            end else if (overall) begin
                single_err = 1;
                if (synd != 0 && synd <= 5'd16) corrected[pos[3:0]] = ~data_in[pos[3:0]];
            end else begin
                double_err = 1;
            end
        end
        data_out = corrected;
    end
endmodule
