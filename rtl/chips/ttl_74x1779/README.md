# ttl_74x1779 — 8-bit bidirectional binary counter

Synchronous up/down counter with parallel load, count enable, and an active-low
async clear. Direction is selected with `up_dn`. `rco_n` is the ripple-carry
output (asserted at `0xFF` when counting up or `0x00` when counting down, while
count is enabled).
