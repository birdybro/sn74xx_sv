# ttl_74x90 — Decade counter (÷2 and ÷5)

Two independent counter sections that can be cascaded externally for a
full BCD decade counter.

## Sections

- **÷2** — clocked by `clk_a`, output `q_a`.
- **÷5** — clocked by `clk_b`, outputs `q_b`, `q_c`, `q_d` (3-bit mod-5 counter).

For decade operation, tie `q_a` to `clk_b` externally. The combined
output is the BCD digit {q_d, q_c, q_b, q_a}.

## Reset / set-9

| `r0_1 & r0_2` | `r9_1 & r9_2` | Action                              |
| ------------- | ------------- | ----------------------------------- |
| 0             | 0             | normal counting                     |
| 1             | 0             | async reset to 0                    |
| x             | 1             | async set to 9 (QA=1, QB=0, QC=0, QD=1) |

Set-9 has priority over reset, matching the datasheet.
