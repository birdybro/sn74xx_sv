# ttl_74x13 — Dual 4-input NAND, Schmitt-trigger inputs

DIP-14. Two 4-input NAND gates with Schmitt input thresholds.

```
y[i] = ~(a[i] & b[i] & c[i] & d[i])   for i in 0..1
```

## What is *not* modeled

**Schmitt-trigger hysteresis** is an analog input-stage property and is not
representable in RTL. Inputs are treated as plain logic. See
`docs/unsupported_physical_behavior.md`.

## Testbench

Exhaustive 256-vector walk (2^8 input patterns).
