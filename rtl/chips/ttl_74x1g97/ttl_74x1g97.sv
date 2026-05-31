// =============================================================================
// ttl_74x1g97 - Configurable multiple-function gate
//
// Original part number : 74x1G97 (74LVC1G97, 74AUP1G97, ...)
// Description          : Single configurable multiple-function gate.
// Datasheet reference  : TI SN74LVC1G97 (https://www.ti.com/lit/gpn/sn74lvc1g97)
//
// Function
// --------
// The silicon implements one fixed three-input function whose output is a
// 2-to-1 multiplexer selected by in2:
//
//     y = in2 ? in0 : in1
//
// Datasheet Table 1 (Function Table), with In2/In1/In0 as the inputs:
//
//     In2 In1 In0 | Y
//      L   L   L  | L
//      L   L   H  | L
//      L   H   L  | H
//      L   H   H  | H
//      H   L   L  | L
//      H   L   H  | H
//      H   H   L  | L
//      H   H   H  | H
//
// By tying inputs to Vcc/GND (or wiring them together) the user obtains any of
// the nine advertised single-gate functions: 2-to-1 data selector, 2-input
// AND, OR, NAND, NOR, AND/OR/NOR with one inverted input, inverter, and
// noninverting buffer (datasheet Table 2). The RTL models only the underlying
// silicon function; the configuration is done by the instantiator's wiring.
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

module ttl_74x1g97 (
    input  logic in0,
    input  logic in1,
    input  logic in2,
    output logic y
);

    assign y = in2 ? in0 : in1;

endmodule
