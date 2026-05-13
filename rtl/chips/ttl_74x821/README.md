# ttl_74x821 — 10-bit bus interface flip-flop (3-state, non-inverting)

Ten posedge-clocked D flip-flops sharing a single output enable. Per
SN74AS821A datasheet, `/OE` only gates the output buffers; internal
storage continues to capture data on every clock edge regardless of
`/OE`. There is no clear/preset.
