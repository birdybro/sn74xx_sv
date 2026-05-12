# ttl_74x373 — Octal D-type transparent latch, 3-state

| Signal | Width | Dir | Description                           |
| ------ | ----- | --- | ------------------------------------- |
| `oe_n` | 1     | in  | Output enable, active low             |
| `le`   | 1     | in  | Latch enable: 1 = transparent, 0 = hold |
| `d`    | [7:0] | in  | Data input                            |
| `q`    | [7:0] | out | Latched output (0 when `oe_n=1`)      |

This part is an actual latch (not a flip-flop) — the only chip in this
library where `always_latch` is legitimately used.

When `oe_n` is high, the muxed-zero convention applies (see
`docs/conventions.md`). Wrap with an FPGA tri-state pad primitive to
drive a real bidirectional pin.

## Testbench

Exercises transparent mode (`le=1`), hold mode (`le=0`), and the output
enable, ensuring `q` follows or holds correctly and the OE gates the output.
