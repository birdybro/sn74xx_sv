# ttl_74x1g57 — configurable multiple-function gate

Single configurable multiple-function gate. Datasheet: TI
[SN74LVC1G57](https://www.ti.com/lit/gpn/sn74lvc1g57).

## Function

The device implements one fixed three-input silicon function — a 2-to-1
multiplexer selected by `in2`, choosing `~in0` when `in2=0` and `in1` when
`in2=1`:

```
y = in2 ? in1 : ~in0
```

Datasheet Table 1 (Function Table), inputs `In2 In1 In0`:

| In2 | In1 | In0 | Y |
|-----|-----|-----|---|
|  L  |  L  |  L  | H |
|  L  |  L  |  H  | L |
|  L  |  H  |  L  | H |
|  L  |  H  |  H  | L |
|  H  |  L  |  L  | L |
|  H  |  L  |  H  | L |
|  H  |  H  |  L  | H |
|  H  |  H  |  H  | H |

## Configuration

Tying the three inputs to Vcc/GND or together yields the advertised functions
in datasheet Table 2: AND, OR, NAND, NOR, **XNOR**, inverter, and noninverting
buffer. The [`ttl_74x1g58`](../ttl_74x1g58/README.md) is the complementary
(inverted-output) part. This module models the underlying silicon function
only.

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

Exhaustive — all 8 input combinations checked against datasheet Table 1.
Verilator `--lint-only -Wall` clean. Synthesizes to a single LUT3.
