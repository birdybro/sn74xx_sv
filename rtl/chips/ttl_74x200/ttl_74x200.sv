// ttl_74x200 - 256-bit RAM (256x1)
// Sync write, async read. 
module ttl_74x200 #(parameter INIT_FILE = "")
(
    input  logic        clk,
    input  logic [7:0] addr,
    input  logic  data_in,
    input  logic        we_n,
    input  logic        cs_n,
    output logic  data_out
);
    logic  mem [0:255];
    initial begin
        if (INIT_FILE != "") $readmemb(INIT_FILE, mem);
    end
    always_ff @(posedge clk) begin
        if (!cs_n && !we_n) mem[addr] <= data_in;
    end
    assign data_out = (!cs_n) ? mem[addr] : 1'b0;
endmodule
