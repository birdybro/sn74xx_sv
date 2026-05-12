# ttl_74x168 — Synchronous 4-bit up/down BCD decade counter

`u_d_n=1` counts up (0–9), `u_d_n=0` counts down. `rco_n` (ripple carry,
active low) is asserted at the count extremes (9 going up, 0 going down)
when `ent=1`.
