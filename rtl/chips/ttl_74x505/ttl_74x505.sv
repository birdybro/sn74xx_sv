// ttl_74x505 - 8-bit SAR ADC (digital approximation; real part contains analog comparator).
// Digital model: treats `analog_code` input as the already-quantized 8-bit value.
module ttl_74x505 (
    input  logic       clk, start_n,
    input  logic [7:0] analog_code,
    output logic [7:0] q,
    output logic       done
);
    logic [3:0] state;
    always_ff @(posedge clk) begin
        if (!start_n) begin
            state <= 8;
            q     <= 0;
            done  <= 0;
        end else if (!done) begin
            logic [7:0] trial;
            trial = q | (8'b1 << (state-1));
            if (analog_code >= trial) q <= trial;
            if (state == 1) done <= 1;
            else state <= state - 1;
        end
    end
endmodule
