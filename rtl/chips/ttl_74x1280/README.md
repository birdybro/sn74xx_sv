# ttl_74x1280 — 9-bit parity generator/checker with registered outputs

A 9-bit parity generator/checker (relative of the [`ttl_74x280`](../ttl_74x280/README.md))
with an `I8` enable and a clocked register on the parity result. Datasheet:
Quality Semiconductor **QSFCT280T/1280T** (MDSL-00014-01).

## Function

Combinational parity over `I0..I7`, plus `I8` when `en8` is high:

```
sum_o (odd)  = ^i[7:0] ^ (en8 & i8)
sum_e (even) = ~sum_o
```

(`en8` low excludes `I8` from the parity, per the Function Table.)

Registered outputs (`q_sum_e`/`q_sum_o`) — for a parity check on the following
cycle:

| OER̄ | CEN̄ | CLR̄ | CLK | QΣe / QΣo |
|-----|-----|-----|-----|-----------|
| H | X | X | X | Hi-Z (modeled 0) |
| L | X | L | X | 0 (async clear) |
| L | H | H | ↑ | hold |
| L | L | H | ↑ | load Σe / Σo |

The combinational `sum_e`/`sum_o` are always driven.

## Pin mapping (FCT1280, 20-pin)

I5=1, I6=2, I7=3, EN8=4, I8=5, Σe=6, Σo=7, QΣe=8, QΣo=9, GND=10, `/CLR`=11,
`/OER`=12, `/CEN`=13, CLK=14, I0=15, I1=16, I2=17, I3=18, I4=19, Vcc=20.

## Unsupported physical behavior

True three-state high-Z on the registered outputs (modeled as driven 0).

## Verification

Exhaustive combinational parity over all 1024 `{i, i8, en8}` combinations, plus
directed register checks (load, clock-enable hold, async clear, OER three-state)
and a 2000-step random sequential soak against a reference model. Verilator
`--lint-only -Wall` clean.
