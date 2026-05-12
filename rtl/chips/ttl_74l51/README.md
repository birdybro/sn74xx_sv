# ttl_74l51 — 3-3 AOI + 2-2 AOI gate (low-power variant)

Two independent AOI gates of different widths.

- `y[0] = ~((a3 & b3 & c3) | (d3 & e3 & f3))`  — 3-3 AOI
- `y[1] = ~((a2 & b2) | (c2 & d2))`            — 2-2 AOI

Datasheet: SN74L51. The 74L family is the low-power TTL family.

Exhaustive 1024-vector testbench (2^10 input combinations).
