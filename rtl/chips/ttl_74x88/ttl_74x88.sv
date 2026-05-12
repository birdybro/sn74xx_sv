// =============================================================================
// ttl_74x88 - 256-bit ROM (32 words x 8 bits)
//
// Parameterizable factory-programmed mask ROM. INIT_FILE parameter accepts
// a $readmemh file path for the ROM contents. Async read.
//
// The original chip has open-collector outputs; this RTL drives them
// directly (muxed-zero is degenerate with always-zero for a ROM).
// =============================================================================

module ttl_74x88 #(parameter INIT_FILE = "")
(
    input  logic [4:0] addr,
    output logic [7:0] data
);
    logic [7:0] mem [0:31];

    initial begin
        if (INIT_FILE != "") $readmemh(INIT_FILE, mem);
        else begin
            for (int i = 0; i < 32; i++) mem[i] = 8'h00;
        end
    end

    assign data = mem[addr];
endmodule
