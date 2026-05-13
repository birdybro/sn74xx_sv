// ttl_74x4049 - Hex inverting buffer / level translator.
module ttl_74x4049 (
    input  logic [5:0] a,
    output logic [5:0] y
);
    assign y = ~a;
endmodule
