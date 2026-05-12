// ttl_74x187 - 1024-bit ROM (256x4).
module ttl_74x187 #(parameter INIT_FILE = "")
(
    input  logic [7:0] addr,
    output logic [3:0] data
);
    logic [3:0] mem [0:255];
    initial begin
        if (INIT_FILE != "") $readmemh(INIT_FILE, mem);
        else for (int i = 0; i < 256; i++) mem[i] = 4'h0;
    end
    assign data = mem[addr];
endmodule
