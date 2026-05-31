# ttl_74x1t98 — single-supply configurable multiple-function gate (inverting)

Single-supply voltage-level translator with nine configurable gate logic
functions — the AUP translating counterpart of the
[`ttl_74x1g98`](../ttl_74x1g98/README.md), the inverting member of the family.
Datasheet: TI [SN74AUP1T98](https://www.ti.com/lit/gpn/sn74aup1t98).

## Function

Inputs A, B, C. A 2-to-1 mux selected by `c` (`c=0` → `b`, `c=1` → `a`) with
the output inverted:

```
y = ~(c ? a : b)
```

Function Table (`C B A`), the complement of the '1T97 (identical to the '1G98):

| C | B | A | Y |
|---|---|---|---|
| L | L | L | H |
| L | L | H | H |
| L | H | L | L |
| L | H | H | L |
| H | L | L | H |
| H | L | H | L |
| H | H | L | H |
| H | H | H | L |

## Configuration

Tying A/B/C to Vcc/GND yields the advertised functions: 2-to-1 data selector,
NAND, NOR (with optional inverted input), inverter, and noninverting buffer.

## Pin mapping (6-pin SOT)

| Pin | Signal | Pin | Signal |
|-----|--------|-----|--------|
| 1   | b      | 6   | c      |
| 2   | GND    | 5   | Vcc    |
| 3   | a      | 4   | y      |

## Unsupported physical behavior

- **Single-supply voltage-level translation** (the part's headline feature):
  electrical-only, **not modeled** — the digital logic passes through.
- **Schmitt-trigger input hysteresis** and **partial-power-down (Ioff)**: out
  of scope. Inputs are treated as ideal logic levels.

## Verification

Exhaustive — all 8 input combinations checked against the datasheet Function
Table. Verilator `--lint-only -Wall` clean. Synthesizes to a single LUT3.
