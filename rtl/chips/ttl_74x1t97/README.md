# ttl_74x1t97 — single-supply configurable multiple-function gate

Single-supply voltage-level translator with nine configurable gate logic
functions — the AUP translating counterpart of the
[`ttl_74x1g97`](../ttl_74x1g97/README.md). Datasheet: TI
[SN74AUP1T97](https://www.ti.com/lit/gpn/sn74aup1t97).

## Function

Inputs A, B, C. A 2-to-1 mux selected by `c` (datasheet Figure 7-4: when C is
L, Y = B; when C is H, Y = A):

```
y = c ? a : b
```

Datasheet Table 7-1 (Function Table), `C B A`:

| C | B | A | Y |
|---|---|---|---|
| L | L | L | L |
| L | L | H | L |
| L | H | L | H |
| L | H | H | H |
| H | L | L | L |
| H | L | H | H |
| H | H | L | L |
| H | H | H | H |

## Configuration

Tying A/B/C to Vcc/GND yields the advertised functions: 2-to-1 data selector,
AND, OR, NAND, NOR (with optional inverted input), inverter, and noninverting
buffer.

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

Exhaustive — all 8 input combinations checked against datasheet Table 7-1.
Verilator `--lint-only -Wall` clean. Synthesizes to a single LUT3.
