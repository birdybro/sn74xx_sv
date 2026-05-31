// =============================================================================
// ttl_74x2g57 - Dual configurable multiple-function gate
//
// Original part number : 74x2G57
// Datasheet reference  : TI SN74LVC1G57 (single-gate function)
//
// Function (per gate)
// -------------------
// configurable gate offering AND/OR/NAND/NOR/XNOR/inverter/buffer.
// Each of the 2 gate(s) implements the verified single-gate silicon function:
//     y = in2 ? in1 : ~in0
//
// The "multiple-function" behavior comes from how the instantiator wires the
// three inputs (to Vcc/GND or together) to select AND/OR/NAND/NOR/MUX/inverter/
// buffer/etc. This module models the underlying silicon function only.
//
// FPGA notes
// ----------
// Pure combinational; 2 independent LUT3(s). No clock, reset, enable.
//
// Unsupported physical behavior
// -----------------------------
// Schmitt-trigger input hysteresis, voltage down-translation, and
// partial-power-down (Ioff) are electrical-only and not modeled. Inputs are
// treated as ideal logic levels.
// =============================================================================

module ttl_74x2g57 (
    input  logic [1:0] in0,
    input  logic [1:0] in1,
    input  logic [1:0] in2,
    output logic [1:0] y
);

    assign y[0] = in2[0] ? in1[0] : ~in0[0];
    assign y[1] = in2[1] ? in1[1] : ~in0[1];

endmodule
