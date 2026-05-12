// ttl_74x84 - 16-bit RAM (16x1), different pinout from 74x81 but same function.
module ttl_74x84 #(parameter INIT_FILE = "")
(
    input  logic       clk,
    input  logic [3:0] addr,
    input  logic       data_in,
    input  logic       we_n,
    input  logic       cs_n,
    output logic       data_out
);
    logic mem [0:15];

    initial begin
        if (INIT_FILE != "") $readmemb(INIT_FILE, mem);
    end

    always_ff @(posedge clk) begin
        if (!cs_n && !we_n) mem[addr] <= data_in;
    end

    assign data_out = (!cs_n) ? mem[addr] : 1'b0;
endmodule
