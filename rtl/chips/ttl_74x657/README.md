# ttl_74x657 — Octal bus transceiver with parity (3-state)

`'F245` (non-inverting octal transceiver) combined with a `'F280B` 9-bit
parity engine in a single 24-pin package. Direction `t_r` selects which
port drives data; the 9th bit `PARITY` is generated on the transmit side
and checked against `/ERR` on the receive side.

| `oe_n` | `t_r` | A | B | PARITY | /ERR |
|--------|-------|---|---|--------|------|
| 1      | x     | Z | Z | Z      | Z    |
| 0      | 1     | in | out=A | out (parity of A + odd) | Z |
| 0      | 0     | out=B | in | in    | parity-check (Hi-Z otherwise) |

Parity formulas:
- `parity_out = ^a_in XOR odd` — value the chip drives during transmit.
- `err_n     = ~((^b_in) XOR parity_in XOR odd)` — active-low. `err_n=0`
  means the supplied `parity_in` over `b_in` does *not* match the polarity
  selected by `odd` (`odd=1` → odd parity expected, `odd=0` → even).

Bidirectional pins (`a`, `b`, `parity`, `err`) are split into `_in` / `_out`
plus an `_oe_n` status; see [ttl_74x245](../ttl_74x245/README.md) for the
pad-wrap pattern.
