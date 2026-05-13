# ttl_74x4724 — 8-bit addressable latch

Like [ttl_74x259](../ttl_74x259/README.md): each call writes `d_in` into the
bit selected by `addr` when `le_n = 0`. `clr_n` async-clears all bits.
