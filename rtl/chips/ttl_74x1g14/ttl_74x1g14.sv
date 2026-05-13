// ttl_74x1g14 - Single inverter (Schmitt trigger on physical part).
// Schmitt hysteresis is an analog input characteristic and is not modeled.
module ttl_74x1g14 (
    input  logic a,
    output logic y
);
    assign y = ~a;
endmodule
