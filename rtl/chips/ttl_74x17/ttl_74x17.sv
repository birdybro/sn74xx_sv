// =============================================================================
// ttl_74x17 - Hex buffer/driver, OC 15V/40mA, non-inverting
// Function: y = a
// Datasheet: SN7417 (https://www.ti.com/lit/gpn/sn7417)
// =============================================================================

module ttl_74x17 (
    input  logic [5:0] a,
    output logic [5:0] y
);

    assign y = a;

endmodule
