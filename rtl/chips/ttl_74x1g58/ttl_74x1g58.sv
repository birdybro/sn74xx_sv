// =============================================================================
// ttl_74x1g58 - Configurable multiple-function gate
//
// Original part number : 74x1G58 (74LVC1G58, 74AUP1G58, ...)
// Description          : Single configurable multiple-function gate.
// Datasheet reference  : TI SN74LVC1G58 (https://www.ti.com/lit/gpn/sn74lvc1g58)
//
// Function
// --------
// The silicon implements one fixed three-input function, the complement of the
// '1G57. It behaves as a 2-to-1 multiplexer selected by in2, choosing in0 when
// in2=0 and ~in1 when in2=1:
//
//     y = in2 ? ~in1 : in0      (= ~('1G57) for all inputs)
//
// Datasheet Function Table, with In2/In1/In0 as the inputs:
//
//     In2 In1 In0 | Y
//      L   L   L  | L
//      L   L   H  | H
//      L   H   L  | L
//      L   H   H  | H
//      H   L   L  | H
//      H   L   H  | H
//      H   H   L  | L
//      H   H   H  | L
//
// By tying inputs to Vcc/GND (or wiring them together) the user obtains any of
// the advertised functions: AND/NAND/OR/NOR with one or both inputs inverted,
// and XOR (datasheet Function Selection Table). The '1G57 is the complementary
// part. The RTL models only the underlying silicon function; configuration is
// done by the instantiator's wiring.
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
// treated as ideal logic levels. Voltage over-/down-translation and partial-
// power-down (Ioff) behavior are electrical-only and out of scope.
// =============================================================================

module ttl_74x1g58 (
    input  logic in0,
    input  logic in1,
    input  logic in2,
    output logic y
);

    assign y = in2 ? ~in1 : in0;

endmodule
