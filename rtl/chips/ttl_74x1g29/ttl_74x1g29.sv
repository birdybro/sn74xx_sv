// ttl_74x1g29 - Single 2-to-3 line decoder with active-low outputs.
// (Treated as 2-to-3 of a 4-line decoder with one output omitted.)
module ttl_74x1g29 (
    input  logic en_n,
    input  logic [1:0] sel,
    output logic y0_n, y1_n, y2_n
);
    always_comb begin
        y0_n = 1; y1_n = 1; y2_n = 1;
        if (!en_n) begin
            case (sel)
                2'b00: y0_n = 0;
                2'b01: y1_n = 0;
                2'b10: y2_n = 0;
                default: ;
            endcase
        end
    end
endmodule
