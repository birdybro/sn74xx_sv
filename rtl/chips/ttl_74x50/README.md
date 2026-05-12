# ttl_74x50 — Dual 2-2 AND-OR-Invert (AOI), one gate expandable

Two AOI gates. Each computes:

```
y[i] = ~((a1[i] & b1[i]) | (a2[i] & b2[i]))    for i in 0..1
```

Gate 0 on the real chip exposes expander pins; the expander interface
cannot be modeled in synthesizable RTL and is omitted. Widen the AOI
expression at the next level of hierarchy if needed.
