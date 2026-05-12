# ttl_74x23 — Dual 4-input NOR with strobe, one gate expandable

DIP-16. Two 4-input NOR gates, each with an active-high strobe `g`. When
`g[i]` is low the output is held at 0; when `g[i]` is high, output is the
NOR of the four data inputs.

```
y[i] = g[i] & ~(a[i] | b[i] | c[i] | d[i])    for i in 0..1
```

## Expander pin

The first gate on the real chip exposes a pair of expander pins (often
labeled X and X̄) that connect to a 74x60 dual 4-input "expander" buffer
to widen the effective NOR. There is no equivalent in synthesizable RTL —
internal wired-OR/AND nets cannot be inferred. If you need more inputs,
widen the NOR expression at the next level of hierarchy.

## Testbench

Exhaustive 1024-vector walk (2^10 input patterns: 2 a + 2 b + 2 c + 2 d + 2 g).
