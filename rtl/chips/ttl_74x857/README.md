# ttl_74x857 — Hex 2-to-1 universal multiplexer (3-state)

Per SN74ALS857 (SDAS170A). Six 2-to-1 muxes sharing select inputs `S0`,
`S1`, and a complement select `COMP`. The eight `{COMP, S1, S0}`
combinations cover: select A, select B, AND mask (`A & B`), force-low,
plus the inverted variants of each, and an all-Hi-Z mode (`COMP=S1=S0=H`).

There is also an `OPER=0` zero-detector output that goes high when the
*selected* operand (A in S=00 modes, B in S=01 modes) is all zeros.
`OPER=0` itself becomes Hi-Z during AND-mask modes (S=10) and during the
all-Hi-Z mode.

The 7 outputs (6 Y + OPER) are split per project convention into the
driven value plus an `_oe_n` status.
