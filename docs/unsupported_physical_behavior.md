# Unsupported physical / electrical behavior

The library is digital-only. The original 7400-series parts include features
that are not meaningful for FPGA RTL — they belong to the electrical or analog
domain. This document records the project-wide policy for each such feature.

A chip whose only useful function is one of these features (e.g., a pure analog
switch) is marked `digital_only_approximation` in `build/chips.json`, rendered as
`[!]` in `tasks.md`, and its README explicitly states what is *not* modeled.

## Open-collector / open-drain outputs

Original parts: 74x01, 74x03, 74x05, 74x07, 74x09, 74x12, 74x17, 74x22, 74x26,
74x33, 74x38, 74x125 family (in some subfamilies), and many bus drivers.

- **What the real chip does:** the output transistor either pulls the pin to
  ground or floats. Multiple OC outputs connected to a single net with an
  external pull-up form a wired-AND (or wired-OR, depending on logic family
  convention).
- **What this library does:** implements the logic function (NAND, AND,
  inverter, etc.) as a normal driven output. There is no wired-AND.
- **If a user wants wired-AND:** AND the OC signals together at the next level
  of hierarchy.

## Three-state / high-Z outputs

Original parts: 74x125, 74x126, 74x240, 74x241, 74x244, 74x245, 74x373, 74x374,
the LVC/LVT bus families, and many widebus parts.

- **What the real chip does:** when output enable is deasserted, the output
  pin is high-impedance, allowing bus sharing.
- **What this library does:** when `oe_n` is deasserted, the module drives `'0`
  on the data outputs. The `oe_n` input is preserved as a port so consumers
  can route it to an FPGA tri-state pad if the chip is being used as a pin
  driver at the top level. Internal FPGA fabric does not have tri-state nets.
- **If the chip is being used to drive FPGA I/O pads:** wrap the module in a
  thin top-level that converts the muxed-zero output and `oe_n` into a real
  tri-state pad. The chip README of each affected part repeats this guidance.

## Schmitt-trigger inputs

Original parts: 74x14, 74x132, 74x19, and selected gate variants.

- **What the real chip does:** input voltage threshold has hysteresis,
  cleaning up slow or noisy edges.
- **What this library does:** the input is a plain logic signal; the gate
  itself is implemented as a normal inverter / NAND / etc. Hysteresis is a
  property of the analog input stage and is irrelevant for FPGA-internal
  logic. If you need debouncing, instantiate a debouncer.

## Pull-up and pull-down inputs / bus-hold

Original parts: parts whose datasheet specifies internal pull-ups or pull-downs
on unused inputs, and bus-hold parts (`-H` suffix in newer families).

- **What the real chip does:** an internal resistor holds an unconnected pin
  at a known level; bus-hold latches the last driven value.
- **What this library does:** RTL treats each input as a driven logic value.
  Pull resistors and bus-hold are not modeled. If the FPGA's I/O block
  supports keepers or pull-ups, configure them in the I/O constraints, not the
  RTL.

## Voltage-level translation

Original parts: 74LVC1T45, 74LVC8T245, the LSF / TXS / TXB families, the FXL
level-translator series, and the like.

- **What the real chip does:** translates between supply rails (e.g., 1.8 V
  ↔ 3.3 V) while optionally providing direction control.
- **What this library does:** implements the digital pass-through (and the
  direction control, if any). Voltage translation is a function of the FPGA
  I/O bank, not RTL.

## High-voltage / high-current / relay / lamp drivers

Original parts: 74x06, 74x07, 75451 family, ULN20xx etc. where listed.

- **What the real chip does:** outputs survive higher voltage or sink larger
  current than the standard CMOS/TTL stage, suitable for driving relays, LED
  displays, solenoids.
- **What this library does:** implements the digital logic function.
  Electrical drive capability is not modeled.

## Crystal-oscillator and clock-generator analog drive

Original parts: 74x04 (often used with a feedback resistor as an inverter
oscillator), 74x14 likewise, 74HC4060 with crystal, 74x624, 74x625, etc.

- **What the real chip does:** the gate's small-signal gain plus an external
  crystal and feedback network forms a Pierce or similar oscillator.
- **What this library does:** implements the gate. **Does not** model
  oscillation. For FPGA designs that need a clock, use the FPGA's PLL/MMCM.

## Monostable / retriggerable one-shot timing (74x121, 74x122, 74x123, 74x423)

- **What the real chip does:** an external R-C network sets a pulse width.
- **What this library does:** implements a synchronous monostable with a
  programmable pulse-width parameter expressed in clock cycles. The chip
  README documents the parameter and the mapping from R-C to clock cycles
  is left to the user.
- **Marked** `digital_only_approximation` in `build/chips.json`.

## Delay lines (74x31 and related)

- **What the real chip does:** purely propagation-delay-based delay.
- **What this library does:** registered delay of N cycles, parameterizable.
- **Marked** `digital_only_approximation`.

## Analog switches (4016/4066-like parts that appear in 74-series numbering)

- **What the real chip does:** a CMOS transmission gate passes analog signals
  in both directions when enabled.
- **What this library does:** a digital mux that conducts the input value
  to the output when enabled, zero otherwise. Bidirectionality is not modeled.
- **Marked** `digital_only_approximation`.

## ADC / DAC parts

If any 74-series numbered ADC appears on the list (rare but possible), it is
**not implemented**. The chip is marked `blocked` in `build/chips.json` with
the reason `analog conversion is out of scope for FPGA RTL`.

## Driver-only differential / line driver parts

Original parts: differential line drivers and receivers (74x86 is not one;
parts like 26LS31/32 are, where they appear).

- **What the real chip does:** differential electrical signaling.
- **What this library does:** the logic equivalent (data passes through),
  marked `digital_only_approximation`.
