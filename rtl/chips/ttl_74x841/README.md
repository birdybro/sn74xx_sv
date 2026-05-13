# ttl_74x841 — 10-bit bus-interface D-type transparent latch (3-state)

Per SN74ALS841/SN74AS841A (SDAS059C): ten level-sensitive transparent
latches sharing a common `le` (latch enable, active high) and a buffered
`/OE`. While `le` is high the Q outputs follow the D inputs; when `le`
goes low the value held at that instant is retained. `/OE` only gates
the output buffers — internal storage is unaffected, so data can be
captured/changed while the outputs are Hi-Z.

Note: the project task header for the 841 family says "flip-flop", but
the TI datasheet describes these as transparent *latches*. This module
matches the datasheet (level-sensitive `always_latch`).
