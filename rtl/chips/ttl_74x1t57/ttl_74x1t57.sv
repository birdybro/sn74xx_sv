// =============================================================================
// ttl_74x1t57 - Single-supply configurable multiple-function gate
//
// Original part number : 74x1T57 (74AUP1T57)
// Description          : Single-supply voltage-level translator with nine
//                        configurable gate logic functions.
// Datasheet reference  : TI SN74AUP1T57 (https://www.ti.com/lit/gpn/sn74aup1t57)
//
// Function
// --------
// The AUP single-supply (voltage-translating) counterpart of the '1G57. The
// logic function is identical; the datasheet names the inputs A, B, C. The
// silicon is a 2-to-1 multiplexer selected by c, choosing ~a when c=0 and b
// when c=1:
//
//     y = c ? b : ~a
//
// Function Table (C B A -> Y), matching the '1G57 Function Table:
//
//     C B A | Y
//     L L L | H
//     L L H | L
//     L H L | H
//     L H H | L
//     H L L | L
//     H L H | L
//     H H L | H
//     H H H | H
//
// By tying inputs to Vcc/GND the user obtains the nine advertised functions:
// AND, OR, NAND, NOR (with optional inverted inputs), XNOR, inverter, and
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
// This part's headline feature is single-supply voltage-level translation
// (e.g., 1.8 V <-> 3.3 V): that is an electrical-only property and is NOT
// modeled here; the digital logic simply passes through. Schmitt-trigger input
// hysteresis and partial-power-down (Ioff) are likewise out of scope. Inputs
// are treated as ideal logic levels.
// =============================================================================

module ttl_74x1t57 (
    input  logic a,
    input  logic b,
    input  logic c,
    output logic y
);

    assign y = c ? b : ~a;

endmodule
