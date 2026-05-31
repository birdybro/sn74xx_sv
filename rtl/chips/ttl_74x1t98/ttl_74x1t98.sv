// =============================================================================
// ttl_74x1t98 - Single-supply configurable multiple-function gate (inverting)
//
// Original part number : 74x1T98 (74AUP1T98)
// Description          : Single-supply voltage-level translator with nine
//                        configurable gate logic functions.
// Datasheet reference  : TI SN74AUP1T98 (https://www.ti.com/lit/gpn/sn74aup1t98)
//
// Function
// --------
// The AUP single-supply (voltage-translating) counterpart of the '1G98 — the
// inverting member. Inputs are named A, B, C. The silicon is a 2-to-1
// multiplexer selected by c (c=0 -> b, c=1 -> a), with the output inverted:
//
//     y = ~(c ? a : b)
//
// Function Table (C B A -> Y), the complement of the '1T97 / matching '1G98:
//
//     C B A | Y
//     L L L | H
//     L L H | H
//     L H L | L
//     L H H | L
//     H L L | H
//     H L H | L
//     H H L | H
//     H H H | L
//
// By tying inputs to Vcc/GND the user obtains the nine advertised functions:
// 2-to-1 data selector, NAND, NOR (with optional inverted input), inverter,
// and noninverting buffer (datasheet Function Selection Table). The RTL models
// the underlying silicon function only.
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

module ttl_74x1t98 (
    input  logic a,
    input  logic b,
    input  logic c,
    output logic y
);

    assign y = ~(c ? a : b);

endmodule
