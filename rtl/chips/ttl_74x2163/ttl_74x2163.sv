// ttl_74x2163 - 4-bit synchronous binary counter, sync clear and load (= 74x163).
module ttl_74x2163 (
    input  logic       clk,
    input  logic       clr_n,
    input  logic       load_n,
    input  logic       enp,
    input  logic       ent,
    input  logic [3:0] d,
    output logic [3:0] q,
    output logic       rco
);
    always_ff @(posedge clk) begin
        if (!clr_n)         q <= 4'b0000;
        else if (!load_n)   q <= d;
        else if (enp & ent) q <= q + 4'b0001;
    end
    assign rco = (q == 4'hF) & ent;
endmodule
