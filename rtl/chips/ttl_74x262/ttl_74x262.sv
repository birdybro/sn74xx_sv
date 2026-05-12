// ttl_74x262 - memory chip
// Sync write, async read. 
module ttl_74x262 #(parameter INIT_FILE = "")
(
    input  logic        clk,
    input  logic [6:0] addr,
    input  logic [44:0] data_in,
    input  logic        we_n,
    input  logic        cs_n,
    output logic [44:0] data_out
);
    logic [44:0] mem [0:127];
    initial begin
        if (INIT_FILE != "") $readmemh(INIT_FILE, mem);
    end
    always_ff @(posedge clk) begin
        if (!cs_n && !we_n) mem[addr] <= data_in;
    end
    assign data_out = (!cs_n) ? mem[addr] : 45'h0;
endmodule
