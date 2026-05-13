# ttl_74x7793 — 8-bit non-inverting transparent latch with readback

8-bit transparent latch where the latched value is always observable on the
`q_rb` readback bus regardless of `oe_n`; the main `q` bus is 3-state-gated
by `oe_n`.
