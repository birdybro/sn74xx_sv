# ttl_74x245 — Octal bus transceiver, 3-state

The 74x245 has two bidirectional 8-bit ports (A and B). Direction is
controlled by `dir` (1 = A→B, 0 = B→A), and `oe_n` enables / disables
both sides.

Bidirectional ports don't synthesize cleanly into FPGA internal fabric,
so this RTL splits each side into:

- `a_in` (read), `a_out` (drive), `a_oe_n` (drive enable status, active low)
- `b_in`, `b_out`, `b_oe_n` symmetric for the B side.

| `oe_n` | `dir` | A-side  | B-side  |
|--------|-------|---------|---------|
| 1      | x     | output 0, `a_oe_n=1` (high-Z) | output 0, `b_oe_n=1` (high-Z) |
| 0      | 1     | output 0, `a_oe_n=1` | `b_out=a_in`, `b_oe_n=0` |
| 0      | 0     | `a_out=b_in`, `a_oe_n=0` | output 0, `b_oe_n=1` |

To drive a real bidirectional pin at the top level, wrap this module
with the FPGA's tri-state pad primitive: pad ← `(a_oe_n ? Z : a_out)`
on the A side, plus feed the pad's read value into `a_in`.
