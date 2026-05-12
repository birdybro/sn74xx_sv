// ttl_74s408 - DRAM controller/driver (functional approximation).
// Multiplexes row/column addresses for 16k/64k/256k DRAMs.
module ttl_74s408 (
    input  logic        clk,
    input  logic        ras_in,    // RAS request
    input  logic        cas_in,    // CAS request
    input  logic [8:0]  row_addr,  // row address
    input  logic [8:0]  col_addr,  // column address
    output logic        ras_n,
    output logic        cas_n,
    output logic [8:0]  dram_addr
);
    assign ras_n = ~ras_in;
    assign cas_n = ~cas_in;
    assign dram_addr = cas_in ? col_addr : row_addr;
endmodule
