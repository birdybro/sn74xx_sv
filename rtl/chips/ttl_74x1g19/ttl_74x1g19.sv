// ttl_74x1g19 - Single 1-to-2 line decoder with active-low outputs.
// Selected output goes low when `en_n` is low; the other stays high.
module ttl_74x1g19 (
    input  logic en_n, sel,
    output logic y0_n, y1_n
);
    assign y0_n = en_n | sel;
    assign y1_n = en_n | ~sel;
endmodule
