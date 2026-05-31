# ttl_74x1g99 — ultra-configurable multiple-function gate, 3-state output

Single configurable multiple-function gate with four data inputs, an active-low
output enable, and a 3-state output. Datasheet: TI
[SN74LVC1G99](https://www.ti.com/lit/gpn/sn74lvc1g99).

## Function

C selects between A and B (a 2-to-1 mux); D XORs the result; `oe_n` gates the
output:

```
core = d ^ (c ? b : a)
y    = oe_n ? 1'b0 : core      // oe_n high = output disabled (3-state)
```

Datasheet Function Table — the 16 enabled patterns of `{D,C,B,A}` (with
`OE` low) plus the disabled row:

| OE | D | C | B | A | Y |
|----|---|---|---|---|---|
| L  | L | L | L | L | L |
| L  | L | L | L | H | H |
| L  | L | L | H | L | L |
| L  | L | L | H | H | H |
| L  | L | H | L | L | L |
| L  | L | H | L | H | L |
| L  | L | H | H | L | H |
| L  | L | H | H | H | H |
| L  | H | L | L | L | H |
| L  | H | L | L | H | L |
| L  | H | L | H | L | H |
| L  | H | L | H | H | L |
| L  | H | H | L | L | H |
| L  | H | H | L | H | H |
| L  | H | H | H | L | L |
| L  | H | H | H | H | L |
| H  | X | X | X | X | Z |

All 16 enabled rows match `core = d ^ (c ? b : a)`.

## Configuration

Tying inputs to Vcc/GND yields the advertised functions in the datasheet
Function Selection Table: 3-state buffer/inverter, 2-to-1 MUX (and inverted),
2-input AND/OR/NAND/NOR (with optional inverted inputs), XOR, and XNOR. This
module models the underlying silicon function only.

## Three-state representation

Per [`docs/conventions.md`](../../../docs/conventions.md), the high-Z output is
modeled as a driven `0` selected by `oe_n` (the same muxed-zero form used by
`ttl_74x125` and the bus parts), not Verilog `'z`. For a true high-Z FPGA pin,
drive a pad output-enable from `oe_n` at the top level.

## Pin mapping (8-pin DCT)

| Pin | Signal | Pin | Signal |
|-----|--------|-----|--------|
| 1   | oe_n   | 8   | Vcc    |
| 2   | a      | 7   | y      |
| 3   | b      | 6   | d      |
| 4   | GND    | 5   | c      |

## Unsupported physical behavior

- **True three-state high-Z**: modeled as driven 0.
- **Schmitt-trigger input hysteresis** (V_T+ / V_T-): ideal logic levels.
- **Voltage down-translation** and **partial-power-down (Ioff)**: electrical-
  only, out of scope.

## Verification

Exhaustive — all 32 combinations of `{oe_n, d, c, b, a}` checked; the 16
enabled patterns reproduce the datasheet Function Table. Verilator
`--lint-only -Wall` clean.
