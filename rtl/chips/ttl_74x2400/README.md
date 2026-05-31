# ttl_74x2400 — dual 4-bit inverting buffer / 8-bit input port, 3-state

Eight inverting buffers in two 4-bit nibbles, each nibble with its own
active-high output-disable enable. Datasheet: iC-Haus **iC-NH** ("8-Bit Input
Port (74THC2400)").

## Function

```
y1 = ng1 ? Z : ~a1      // nibble 1 (1A1..1A4 -> 1Y1..1Y4), enable 1NG
y2 = ng2 ? Z : ~a2      // nibble 2 (2A1..2A4 -> 2Y1..2Y4), enable 2NG
```

A high level on `ng1`/`ng2` switches that nibble's outputs to high-Z (modeled as
a driven 0).

## Pin mapping (20-pin)

1NG=1, 1A1=2, 2Y4=3, 1A2=4, 2Y3=5, 1A3=6, 2Y2=7, 1A4=8, 2Y1=9, GND=10, 2A1=11,
1Y4=12, 2A2=13, 1Y3=14, 2A3=15, 1Y2=16, 2A4=17, 1Y1=18, 2NG=19, Vcc=20.

## Unsupported physical behavior

- **Schmitt-trigger input hysteresis**: inputs treated as ideal logic levels.
- **True three-state high-Z**: modeled as a driven 0.

## Verification

Exhaustive — all 1024 combinations of `{ng1, ng2, a1, a2}`. Verilator
`--lint-only -Wall` clean.
