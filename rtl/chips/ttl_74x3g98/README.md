# ttl_74x3g98 — Triple configurable multiple-function gate

Triple configurable multiple-function gate. Datasheet: TI
[SN74LVC1G98](https://www.ti.com/lit/gpn/sn74lvc1g98) (single-gate
function; this part packages 3 independent copy/copies).

## Function (per gate)

```
y = ~(in2 ? in0 : in1)
```

2-to-1 mux selected by in2 (inverting). The "multiple-function" nature comes from wiring the three
inputs to Vcc/GND or together to select AND, OR, NAND, NOR, the 2-to-1 mux,
inverter, noninverting buffer, etc. This module models the underlying silicon
function only; configuration is the instantiator's wiring.

## Unsupported physical behavior

Schmitt-trigger input hysteresis, voltage down-translation, and
partial-power-down (Ioff) are electrical-only and out of scope (see
`docs/unsupported_physical_behavior.md`). Inputs are treated as ideal logic
levels.

## Verification

Exhaustive — all 512 input combinations checked against the verified
single-gate function. Verilator `--lint-only -Wall` clean.
