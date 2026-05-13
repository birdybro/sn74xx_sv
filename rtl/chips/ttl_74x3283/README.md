# ttl_74x3283 — 32-bit latchable transceiver with parity gen/check

Bidirectional 32-bit transceiver:

- Each direction has a transparent latch (`leab`, `leba`).
- `dir` selects A→B or B→A; `oe_n` gates outputs.
- Odd-parity generated on transmit and checked on the B→A receive path with
  a sticky error flag (cleared by `clr_n`).

Same odd-parity convention as [ttl_74x833](../ttl_74x833/README.md).
