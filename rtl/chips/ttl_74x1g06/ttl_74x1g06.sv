// ttl_74x1g06 - Single inverter gate (open-drain on physical part).
module ttl_74x1g06 (
    input  logic a,
    output logic y
);
    assign y = ~a;
endmodule
