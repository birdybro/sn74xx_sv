// =============================================================================
// ttl_74x3g97 - Triple configurable multiple-function gate
//
// Original part number : 74x3G97
// Datasheet reference  : TI SN74LVC1G97 (single-gate function)
//
// Function (per gate)
// -------------------
// 2-to-1 mux selected by in2 (non-inverting).
// Each of the 3 gate(s) implements the verified single-gate silicon function:
//     y = in2 ? in0 : in1
//
// The "multiple-function" behavior comes from how the instantiator wires the
// three inputs (to Vcc/GND or together) to select AND/OR/NAND/NOR/MUX/inverter/
// buffer/etc. This module models the underlying silicon function only.
//
// FPGA notes
// ----------
// Pure combinational; 3 independent LUT3(s). No clock, reset, enable.
//
// Unsupported physical behavior
// -----------------------------
// Schmitt-trigger input hysteresis, voltage down-translation, and
// partial-power-down (Ioff) are electrical-only and not modeled. Inputs are
// treated as ideal logic levels.
// =============================================================================

module ttl_74x3g97 (
    input  logic [2:0] in0,
    input  logic [2:0] in1,
    input  logic [2:0] in2,
    output logic [2:0] y
);

    assign y[0] = in2[0] ? in0[0] : in1[0];
    assign y[1] = in2[1] ? in0[1] : in1[1];
    assign y[2] = in2[2] ? in0[2] : in1[2];

endmodule
