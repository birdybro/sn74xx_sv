# ttl_74x109 — Dual J-/K posedge FF, clear and preset

JK FF with inverted K input: effective K = `~k_n`. Posedge-clocked, with
async clear and preset per flop.

| J | k_n | Action |
|---|-----|--------|
| 0 | 1   | hold   |
| 0 | 0   | reset  |
| 1 | 1   | set    |
| 1 | 0   | toggle |
