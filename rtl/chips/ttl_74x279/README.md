# ttl_74x279 — Quad S-R latch

Four NAND-style S-R latches (active-low inputs). `s_n=0, r_n=1` sets Q;
`s_n=1, r_n=0` resets Q. Both inputs low is the "illegal" state on the
real chip; this RTL holds the previous value.
