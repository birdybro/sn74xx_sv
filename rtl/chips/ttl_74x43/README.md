# ttl_74x43 — Excess-3-to-decimal decoder

Excess-3 is a 4-bit BCD-like code where decimal N is encoded as (N + 3).
The decoder maps a valid excess-3 input to one of ten active-low decimal
outputs. Invalid codes (0..2 and 13..15) leave all outputs high.

```
xs3 in [3..12] -> y_n[xs3 - 3] = 0; others = 1
xs3 in [0..2] | [13..15] -> y_n = all 1
```

Exhaustive 16-vector testbench.
