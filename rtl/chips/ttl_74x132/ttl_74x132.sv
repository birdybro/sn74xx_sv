// ttl_74x132 - Quad 2-input NAND with Schmitt-trigger inputs.
// Same logic as 74x00. Schmitt input hysteresis not modeled.
module ttl_74x132 (
    input  logic [3:0] a, b,
    output logic [3:0] y
);
    assign y = ~(a & b);
endmodule
