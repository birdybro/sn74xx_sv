// ttl_74as131 - 3-to-8 decoder with address register, inverting outputs.
// Address register is loaded on posedge clk. Output then decodes the
// registered address with active-low outputs (like 74x138).
module ttl_74as131 (
    input  logic       clk,
    input  logic       en_n,
    input  logic [2:0] a,
    output logic [7:0] y_n
);
    logic [2:0] addr_reg;
    always_ff @(posedge clk) begin
        addr_reg <= a;
    end
    always_comb begin
        y_n = 8'hFF;
        if (!en_n) y_n[addr_reg] = 1'b0;
    end
endmodule
