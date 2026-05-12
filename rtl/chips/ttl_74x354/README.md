# ttl_74x354 — 8-to-1 mux with transparent data latch

`d` is latched into a transparent latch (`le=1` = transparent). The
latched data is then muxed by `s` and output through a 3-state buffer
gated by `oe_n`.
