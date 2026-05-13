# ttl_74x7597 — 8-bit shift register with input latches

Parallel data is captured into a transparent input latch (controlled by
`le`), then shifted out serially on `clk` while `sh_en_n` is low. When
`sh_en_n` is high, the shift register is parallel-loaded from the input
latch on every clock.
