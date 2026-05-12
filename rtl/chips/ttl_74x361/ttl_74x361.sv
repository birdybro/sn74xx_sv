// ttl_74x361 - Bubble memory function timing generator (digital approximation).
// Bubble memory is a magnetic-domain technology that's obsolete and not
// FPGA-implementable. This RTL provides a parameterizable timing-pulse
// generator as a placeholder.
module ttl_74x361 #(parameter int CYCLE = 16)
(
    input  logic       clk,
    input  logic       clr_n,
    output logic [3:0] phase    // 4 quadrature phase pulses
);
    logic [31:0] cnt;
    always_ff @(posedge clk or negedge clr_n) begin
        if (!clr_n)              cnt <= 0;
        else if (cnt == CYCLE-1) cnt <= 0;
        else                     cnt <= cnt + 1;
    end
    assign phase[0] = (cnt < CYCLE/4);
    assign phase[1] = (cnt >= CYCLE/4)   && (cnt < CYCLE/2);
    assign phase[2] = (cnt >= CYCLE/2)   && (cnt < 3*CYCLE/4);
    assign phase[3] = (cnt >= 3*CYCLE/4);
endmodule
