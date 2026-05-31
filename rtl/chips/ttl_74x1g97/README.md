# ttl_74x1g97 — configurable multiple-function gate

Single configurable multiple-function gate. Datasheet: TI
[SN74LVC1G97](https://www.ti.com/lit/gpn/sn74lvc1g97).

## Function

The device implements one fixed three-input silicon function — a 2-to-1
multiplexer selected by `in2`:

```
y = in2 ? in0 : in1
```

Datasheet Table 1 (Function Table), inputs `In2 In1 In0`:

| In2 | In1 | In0 | Y |
|-----|-----|-----|---|
|  L  |  L  |  L  | L |
|  L  |  L  |  H  | L |
|  L  |  H  |  L  | H |
|  L  |  H  |  H  | H |
|  H  |  L  |  L  | L |
|  H  |  L  |  H  | H |
|  H  |  H  |  L  | L |
|  H  |  H  |  H  | H |

## Configuration

The "multiple-function" nature comes from how the instantiator wires the three
inputs. Tying inputs to Vcc/GND or wiring them together yields any of the nine
functions in datasheet Table 2: 2-to-1 data selector, 2-input AND, OR, NAND,
NOR, AND/OR/NOR with one inverted input, inverter, and noninverting buffer.
This module models the underlying silicon function only; configuration is the
instantiator's wiring choice.

The `'98` is the inverting counterpart of this part.

## Pin mapping (6-pin SOT)

| Pin | Signal | Pin | Signal |
|-----|--------|-----|--------|
| 1   | in1    | 6   | in2    |
| 2   | GND    | 5   | Vcc    |
| 3   | in0    | 4   | y      |

## Unsupported physical behavior

- **Schmitt-trigger input hysteresis** (V_T+ / V_T-): inputs are treated as
  ideal logic levels.
- **Voltage down-translation** and **partial-power-down (Ioff)**: electrical-
  only, out of scope per `docs/unsupported_physical_behavior.md`.

## Verification

Exhaustive — all 8 input combinations checked against datasheet Table 1.
Verilator `--lint-only -Wall` clean. Synthesizes to a single LUT3.
