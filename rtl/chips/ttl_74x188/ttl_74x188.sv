// ttl_74x188 - 256-bit PROM (32x8). For RTL purposes same as 74x88.
module ttl_74x188 #(parameter INIT_FILE = "")
(
    input  logic [4:0] addr,
    output logic [7:0] data
);
    logic [7:0] mem [0:31];
    initial begin
        if (INIT_FILE != "") $readmemh(INIT_FILE, mem);
        else for (int i = 0; i < 32; i++) mem[i] = 8'h00;
    end
    assign data = mem[addr];
endmodule
