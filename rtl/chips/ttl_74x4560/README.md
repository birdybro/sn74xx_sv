# ttl_74x4560 — 4-bit BCD adder

NBCD (8421) full adder: produces `s` and `cout` such that
`{cout, s}_BCD = a + b + cin` for BCD operands in 0..9. Inputs outside the
BCD range are unsupported.
