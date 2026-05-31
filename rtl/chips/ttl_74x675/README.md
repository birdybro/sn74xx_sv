# ttl_74x675 — 16-bit serial-in, serial/parallel-out shift register

A 16-bit shift register feeding a 16-bit storage register (parallel data loop),
with a dedicated serial input `si`, serial output `so`, and parallel outputs
`q` (Q0..Q15) from the storage register. Datasheet: National **74F675A**
(FAST databook, 1988). The National counterpart of the TI
[`ttl_74x673`](../ttl_74x673/README.md).

## Function

- **Shift register** (falling `srcp`, `cs_n=0`): `R/W=0` → shift right (`si`
  enters at Q0, toward Q15); `R/W=1` → parallel load from storage (no shift).
- **Storage register** (rising `stcp`, `cs_n=0` and `R/W=1`): parallel load from
  the shift register.
- **Outputs**: `so` = shift-register MSB (Q15); `q` = storage register.

Unlike the TI '673, `si`/`so` are separate pins (not a bidirectional SI/O),
there is no separate storage clear, and the outputs are always driven.

## Verification

Reference-model testbench (event-driven mirror of both clock domains): directed
phase verifies a known word through serial-write → store → parallel-load-back →
serial read-out = `0xBEEF`, plus chip-select hold; random phase soaks 1500
steps. Verilator `--lint-only -Wall` clean.
