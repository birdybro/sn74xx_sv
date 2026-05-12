# ttl_74x52 — 3-2-2-2 AND-OR (no invert), expandable

```
y = (a1 & b1 & c1) | (a2 & b2) | (a3 & b3) | (a4 & b4)
```

This is AND-OR (non-inverting), unlike the AOI parts in this region.

The original chip is expandable via a 74x61 buffer/expander; the expander
interface is omitted as it cannot be modeled in synthesizable RTL.

Exhaustive 512-vector testbench.
