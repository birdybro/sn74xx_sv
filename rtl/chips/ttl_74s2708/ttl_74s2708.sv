// ttl_74s2708 - 8192-bit PROM (1024x8). Same model as 74x478.
module ttl_74s2708 #(parameter INIT_FILE = "")
(
    input  logic        clk,
    input  logic [9:0]  addr,
    input  logic [7:0]  data_in,
    input  logic        we_n,
    input  logic        cs_n,
    output logic [7:0]  data_out
);
    logic [7:0] mem [0:1023];
    initial begin
        if (INIT_FILE != "") $readmemh(INIT_FILE, mem);
    end
    always_ff @(posedge clk) begin
        if (!cs_n && !we_n) mem[addr] <= data_in;
    end
    assign data_out = (!cs_n) ? mem[addr] : 8'h0;
endmodule
