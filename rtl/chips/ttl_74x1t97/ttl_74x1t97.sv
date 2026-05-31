// =============================================================================
// ttl_74x1t97 - Single-supply configurable multiple-function gate
//
// Original part number : 74x1T97 (74AUP1T97)
// Description          : Single-supply voltage-level translator with nine
//                        configurable gate logic functions.
// Datasheet reference  : TI SN74AUP1T97 (https://www.ti.com/lit/gpn/sn74aup1t97)
//
// Function
// --------
// The AUP single-supply (voltage-translating) counterpart of the '1G97.
// Inputs are named A, B, C. The silicon is a 2-to-1 multiplexer selected by c
// (datasheet Figure 7-4: when C is L, Y = B; when C is H, Y = A):
//
//     y = c ? a : b
//
// Datasheet Table 7-1 (Function Table), C B A -> Y:
//
//     C B A | Y
//     L L L | L
//     L L H | L
//     L H L | H
//     L H H | H
//     H L L | L
//     H L H | H
//     H H L | L
//     H H H | H
//
// By tying inputs to Vcc/GND the user obtains the nine advertised functions:
// 2-to-1 data selector, AND, OR, NAND, NOR (with optional inverted input),
// inverter, and noninverting buffer (datasheet Table 7-2). The RTL models the
// underlying silicon function only.
//
// FPGA notes
// ----------
// Pure combinational. Single LUT3. No clock, reset, enable.
//
// Pin mapping (DBV/DCK, 6-pin):
//   pin 1 = b       pin 6 = c
//   pin 2 = GND     pin 5 = Vcc
//   pin 3 = a       pin 4 = y
//
// Unsupported physical behavior
// -----------------------------
// Single-supply voltage-level translation (the part's headline feature) is an
// electrical-only property and is NOT modeled; the digital logic passes
// through. Schmitt-trigger input hysteresis and partial-power-down (Ioff) are
// likewise out of scope. Inputs are treated as ideal logic levels.
// =============================================================================

module ttl_74x1t97 (
    input  logic a,
    input  logic b,
    input  logic c,
    output logic y
);

    assign y = c ? a : b;

endmodule
