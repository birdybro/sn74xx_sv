# ttl_7451 — Dual 2-2 AND-OR-Invert (AOI) gate

Two 2-2 AOI gates. Same logic as `ttl_74x50` without the expander pins.

```
y[i] = ~((a1[i] & b1[i]) | (a2[i] & b2[i]))
```
