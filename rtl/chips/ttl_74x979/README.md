# ttl_74x979 — 9-bit registered transceiver with parity (FutureBus)

Behavioral model of an SN74BCT979-class part: two 9-bit registers (A→B and
B→A), parity generated on transmit and checked on receive with a sticky
error flag.

- Odd parity convention (matches [ttl_74x833](../ttl_74x833/README.md)):
  `parity_out = ~(^data)` on transmit; receive flags an error when
  `^{data, parity_in} != 1`.
- `dir` selects direction; `oe_n` gates outputs; `clr_n` async-resets both
  data registers and the error flag.
- Physical FutureBus drive strength and timing are not modeled.
