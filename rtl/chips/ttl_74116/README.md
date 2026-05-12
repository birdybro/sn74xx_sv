# ttl_74116 — Dual 4-bit latch with clear

Eight D latches in two groups of 4. Each group has its own LE (`le[i]`)
and async active-low clear (`clr_n[i]`). When `clr_n` is low the group
goes to 0; when LE is high the group is transparent; otherwise it holds.
