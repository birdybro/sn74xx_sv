// ttl_74x1g132 - Single 2-input NAND gate (Schmitt input on physical part).
// Schmitt hysteresis is an analog input characteristic and is not modeled.
module ttl_74x1g132 (
    input  logic a, b,
    output logic y
);
    assign y = ~(a & b);
endmodule
