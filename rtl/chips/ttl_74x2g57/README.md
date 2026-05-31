# ttl_74x2g57 — Dual configurable multiple-function gate

Dual configurable multiple-function gate. Datasheet: TI
[SN74LVC1G57](https://www.ti.com/lit/gpn/sn74lvc1g57) (single-gate
function; this part packages 2 independent copy/copies).

## Function (per gate)

```
y = in2 ? in1 : ~in0
```

Configurable gate offering and/or/nand/nor/xnor/inverter/buffer. The "multiple-function" nature comes from wiring the three
inputs to Vcc/GND or together to select AND, OR, NAND, NOR, the 2-to-1 mux,
inverter, noninverting buffer, etc. This module models the underlying silicon
function only; configuration is the instantiator's wiring.

## Unsupported physical behavior

Schmitt-trigger input hysteresis, voltage down-translation, and
partial-power-down (Ioff) are electrical-only and out of scope (see
`docs/unsupported_physical_behavior.md`). Inputs are treated as ideal logic
levels.

## Verification

Exhaustive — all 64 input combinations checked against the verified
single-gate function. Verilator `--lint-only -Wall` clean.
