# ttl_74x1g58 — configurable multiple-function gate

Single configurable multiple-function gate, the complement of the
[`ttl_74x1g57`](../ttl_74x1g57/README.md). Datasheet: TI
[SN74LVC1G58](https://www.ti.com/lit/gpn/sn74lvc1g58).

## Function

A 2-to-1 multiplexer selected by `in2`, choosing `in0` when `in2=0` and `~in1`
when `in2=1`:

```
y = in2 ? ~in1 : in0      // = ~('1G57) for all inputs
```

Datasheet Function Table, inputs `In2 In1 In0`:

| In2 | In1 | In0 | Y |
|-----|-----|-----|---|
|  L  |  L  |  L  | L |
|  L  |  L  |  H  | H |
|  L  |  H  |  L  | L |
|  L  |  H  |  H  | H |
|  H  |  L  |  L  | H |
|  H  |  L  |  H  | H |
|  H  |  H  |  L  | L |
|  H  |  H  |  H  | L |

## Configuration

Tying the three inputs to Vcc/GND or together yields the advertised functions
in the datasheet Function Selection Table: AND/NAND/OR/NOR with one or both
inputs inverted, and **XOR**. This module models the underlying silicon
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
- **Voltage translation** and **partial-power-down (Ioff)**: electrical-only,
  out of scope per `docs/unsupported_physical_behavior.md`.

## Verification

Exhaustive — all 8 input combinations checked against the datasheet Function
Table. Verilator `--lint-only -Wall` clean. Synthesizes to a single LUT3.
