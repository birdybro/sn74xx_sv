# ttl_74x190 — Synchronous 4-bit up/down BCD decade counter

Async parallel load (`load_n=0`), active-low count enable (`ctr_en_n=0`),
direction select `d_u_n` (1 = down). Counts 0–9.

`max_min` is high at 9 (counting up) or 0 (counting down). `rco_n` is
the inverted ripple carry that asserts at the extreme when `ctr_en_n=0`.
