// =============================================================================
// ttl_74x1g99 - Ultra-configurable multiple-function gate with 3-state output
//
// Original part number : 74x1G99 (74LVC1G99, ...)
// Description          : Single configurable multiple-function gate, 4-input,
//                        with an active-low output enable and 3-state output.
// Datasheet reference  : TI SN74LVC1G99 (https://www.ti.com/lit/gpn/sn74lvc1g99)
//
// Function
// --------
// Four data inputs A, B, C, D drive one fixed silicon function. C selects
// between A and B (a 2-to-1 mux); D then XORs that result:
//
//     core = d ^ (c ? b : a)
//
// The output is enabled by the active-low oe_n. When oe_n is high the real
// device three-states its output; per the library convention (see
// docs/conventions.md) that is modeled as a driven 0, not Verilog 'z:
//
//     y = oe_n ? 1'b0 : core
//
// Datasheet Function Table (oe_n, D, C, B, A -> Y), enabled rows verified
// against core = d ^ (c ? b : a) for all 16 input patterns; the oe_n=H row
// gives the high-impedance (here: 0) state.
//
// By tying inputs to Vcc/GND the user obtains the advertised 16 functions:
// 3-state buffer/inverter, 2-to-1 MUX (and inverted), 2-input AND/OR/NAND/NOR
// (with optional inverted inputs), XOR, and XNOR (datasheet Function Selection
// Table). The RTL models the underlying silicon function only; configuration
// is the instantiator's wiring.
//
// FPGA notes
// ----------
// Pure combinational. No clock, reset. The 3-state behavior is the muxed-zero
// form; if a true high-Z output is required at an FPGA pin, drive a pad's
// output-enable from oe_n at the top level.
//
// Pin mapping (DCT, 8-pin):
//   pin 1 = oe_n    pin 8 = Vcc
//   pin 2 = a       pin 7 = y
//   pin 3 = b       pin 6 = d
//   pin 4 = GND     pin 5 = c
//
// Unsupported physical behavior
// -----------------------------
// True three-state high-Z (modeled as driven 0), Schmitt-trigger input
// hysteresis, voltage down-translation, and partial-power-down (Ioff) are not
// modeled. Inputs are treated as ideal logic levels.
// =============================================================================

module ttl_74x1g99 (
    input  logic oe_n,
    input  logic a,
    input  logic b,
    input  logic c,
    input  logic d,
    output logic y
);

    assign y = oe_n ? 1'b0 : (d ^ (c ? b : a));

endmodule
