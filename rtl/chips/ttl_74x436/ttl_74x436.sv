// ttl_74x436 - MOS memory interface line driver. Digital pass-through.
module ttl_74x436 (
    input  logic [3:0] a,
    output logic [3:0] y
);
    assign y = a;
endmodule
