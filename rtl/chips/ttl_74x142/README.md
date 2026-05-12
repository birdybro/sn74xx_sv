# ttl_74x142 — Decade counter + latch + decoder + Nixie driver

Combines a BCD decade counter, a transparent latch (gated by `le`), and a
BCD-to-decimal decoder with active-low outputs. Carry out (`c_n`) is
asserted low when the counter shows 9 (about to wrap).

Nixie-tube OC + HV drive is not modeled.
