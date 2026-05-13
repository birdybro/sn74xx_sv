# ttl_74x1760 — 10-bit 4-way latched address multiplexer

Selects one of four 10-bit address sources, optionally latches the result
(transparent when `le=1`, hold when `le=0`), and gates the output with `oe_n`.
Typical use is DRAM row/column address generation.
