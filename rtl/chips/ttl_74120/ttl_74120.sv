// ttl_74120 - Dual pulse synchronizer / driver.
// Each channel: synchronizes an async input pulse to the clock.
// 2-stage synchronizer FF chain (metastability hardening).
module ttl_74120 (
    input  logic [1:0] clk,
    input  logic [1:0] async_in,
    output logic [1:0] sync_out
);
    logic [1:0] stage1, stage2;
    always_ff @(posedge clk[0]) begin
        stage1[0] <= async_in[0];
        stage2[0] <= stage1[0];
    end
    always_ff @(posedge clk[1]) begin
        stage1[1] <= async_in[1];
        stage2[1] <= stage1[1];
    end
    assign sync_out = stage2;
endmodule
