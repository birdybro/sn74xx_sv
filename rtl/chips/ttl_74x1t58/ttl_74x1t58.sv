// =============================================================================
// ttl_74x1t58 - Single-supply configurable multiple-function gate
//
// Original part number : 74x1T58 (74AUP1T58)
// Description          : Single-supply voltage-level translator with nine
//                        configurable gate logic functions.
// Datasheet reference  : TI SN74AUP1T58 (https://www.ti.com/lit/gpn/sn74aup1t58)
//
// Function
// --------
// The AUP single-supply (voltage-translating) counterpart of the '1G58 (and
// the complement of the '1T57). Inputs are named A, B, C. The silicon is a
// 2-to-1 multiplexer selected by c, choosing a when c=0 and ~b when c=1:
//
//     y = c ? ~b : a
//
// Function Table (C B A -> Y), matching the '1G58 Function Table:
//
//     C B A | Y
//     L L L | L
//     L L H | H
//     L H L | L
//     L H H | H
//     H L L | H
//     H L H | H
//     H H L | L
//     H H H | L
//
// By tying inputs to Vcc/GND the user obtains the nine advertised functions:
// AND/NAND/OR/NOR with one or both inputs inverted, XOR, inverter, and
// noninverting buffer (datasheet Function Selection Table). The RTL models the
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

module ttl_74x1t58 (
    input  logic a,
    input  logic b,
    input  logic c,
    output logic y
);

    assign y = c ? ~b : a;

endmodule
