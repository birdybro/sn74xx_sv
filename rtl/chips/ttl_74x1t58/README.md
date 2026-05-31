# ttl_74x1t58 — single-supply configurable multiple-function gate

Single-supply voltage-level translator with nine configurable gate logic
functions — the AUP translating counterpart of the
[`ttl_74x1g58`](../ttl_74x1g58/README.md) and the complement of the
[`ttl_74x1t57`](../ttl_74x1t57/README.md). Datasheet: TI
[SN74AUP1T58](https://www.ti.com/lit/gpn/sn74aup1t58).

## Function

Inputs A, B, C. A 2-to-1 mux selected by `c`, choosing `a` when `c=0` and `~b`
when `c=1`:

```
y = c ? ~b : a
```

Function Table (`C B A`), identical to the '1G58:

| C | B | A | Y |
|---|---|---|---|
| L | L | L | L |
| L | L | H | H |
| L | H | L | L |
| L | H | H | H |
| H | L | L | H |
| H | L | H | H |
| H | H | L | L |
| H | H | H | L |

## Configuration

Tying A/B/C to Vcc/GND yields the advertised functions: AND/NAND/OR/NOR with
one or both inputs inverted, **XOR**, inverter, and noninverting buffer.

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
