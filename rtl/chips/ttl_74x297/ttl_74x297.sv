// ttl_74x297 - Digital PLL filter (loop-filter approximation).
// Implements an up/down counter that adjusts based on phase-detector inputs.
// Outputs are used to drive a VCO (not in this chip).
module ttl_74x297 (
    input  logic       clk,
    input  logic       clr_n,
    input  logic       inc,       // phase detector says: speed up
    input  logic       dec,       // phase detector says: slow down
    output logic [7:0] filter_out
);
    logic [7:0] cnt;
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n)     cnt <= 8'h80;
        else if (inc && !dec && cnt != 8'hFF) cnt <= cnt + 1;
        else if (!inc && dec && cnt != 8'h00) cnt <= cnt - 1;
    end
    assign filter_out = cnt;
endmodule
