// ttl_74x186 - 512-bit ROM (64x8). Mask-programmable via INIT_FILE parameter.
module ttl_74x186 #(parameter INIT_FILE = "")
(
    input  logic [5:0] addr,
    output logic [7:0] data
);
    logic [7:0] mem [0:63];
    initial begin
        if (INIT_FILE != "") $readmemh(INIT_FILE, mem);
        else for (int i = 0; i < 64; i++) mem[i] = 8'h00;
    end
    assign data = mem[addr];
endmodule
