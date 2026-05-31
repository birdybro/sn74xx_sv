# ttl_74x1g98 — configurable multiple-function gate (inverting)

Single configurable multiple-function gate, the inverting counterpart of the
[`ttl_74x1g97`](../ttl_74x1g97/README.md). Datasheet: TI
[SN74LVC1G98](https://www.ti.com/lit/gpn/sn74lvc1g98).

## Function

```
y = ~(in2 ? in0 : in1)
```

Datasheet Function Table, inputs `In2 In1 In0`:

| In2 | In1 | In0 | Y |
|-----|-----|-----|---|
|  L  |  L  |  L  | H |
|  L  |  L  |  H  | H |
|  L  |  H  |  L  | L |
|  L  |  H  |  H  | L |
|  H  |  L  |  L  | H |
|  H  |  L  |  H  | L |
|  H  |  H  |  L  | H |
|  H  |  H  |  H  | L |

## Configuration

Wiring the three inputs to Vcc/GND or together yields the inverting single-gate
functions in the datasheet Function Selection Table: 2-to-1 data selector with
inverted output, 2-input NAND, NOR, NAND/OR/NOR with one inverted input,
inverter, and noninverting buffer. This module models the underlying silicon
function only.

## Pin mapping (6-pin SOT)

| Pin | Signal | Pin | Signal |
|-----|--------|-----|--------|
| 1   | in1    | 6   | in2    |
| 2   | GND    | 5   | Vcc    |
| 3   | in0    | 4   | y      |

## Unsupported physical behavior

- **Schmitt-trigger input hysteresis** (V_T+ / V_T-): inputs treated as ideal
  logic levels.
- **Voltage down-translation** and **partial-power-down (Ioff)**: electrical-
  only, out of scope per `docs/unsupported_physical_behavior.md`.

## Verification

Exhaustive — all 8 input combinations checked against the datasheet Function
Table. Verilator `--lint-only -Wall` clean. Synthesizes to a single LUT3.
