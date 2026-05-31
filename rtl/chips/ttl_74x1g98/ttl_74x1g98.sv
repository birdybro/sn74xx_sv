// =============================================================================
// ttl_74x1g98 - Configurable multiple-function gate (inverting)
//
// Original part number : 74x1G98 (74LVC1G98, 74AUP1G98, ...)
// Description          : Single configurable multiple-function gate, inverting.
// Datasheet reference  : TI SN74LVC1G98 (https://www.ti.com/lit/gpn/sn74lvc1g98)
//
// Function
// --------
// The inverting counterpart of the '1G97. The silicon implements one fixed
// three-input function: a 2-to-1 multiplexer selected by in2, with the output
// inverted.
//
//     y = ~(in2 ? in0 : in1)
//
// Datasheet Function Table, with In2/In1/In0 as the inputs:
//
//     In2 In1 In0 | Y
//      L   L   L  | H
//      L   L   H  | H
//      L   H   L  | L
//      L   H   H  | L
//      H   L   L  | H
//      H   L   H  | L
//      H   H   L  | H
//      H   H   H  | L
//
// By tying inputs to Vcc/GND (or wiring them together) the user obtains the
// inverting single-gate functions: 2-to-1 data selector with inverted output,
// 2-input NAND, NOR, NAND/OR/NOR with one inverted input, inverter, and
// noninverting buffer (datasheet Function Selection Table). The RTL models
// only the underlying silicon function; configuration is the instantiator's
// wiring.
//
// FPGA notes
// ----------
// Pure combinational. Synthesizes to a single LUT3. No clock, reset, enable.
//
// Pin mapping (DBV/DCK/DRL SOT, 6-pin):
//   pin 1 = in1     pin 6 = in2
//   pin 2 = GND     pin 5 = Vcc
//   pin 3 = in0     pin 4 = y
//
// Unsupported physical behavior
// -----------------------------
// Schmitt-trigger input hysteresis (V_T+/V_T-) is not modeled. The inputs are
// treated as ideal logic levels. Voltage down-translation and partial-power-
// down (Ioff) behavior are electrical-only and out of scope.
// =============================================================================

module ttl_74x1g98 (
    input  logic in0,
    input  logic in1,
    input  logic in2,
    output logic y
);

    assign y = ~(in2 ? in0 : in1);

endmodule
