# ttl_74x666 — 8-bit D-type transparent read-back latch, non-inverting (3-state)

Per SN74ALS666 (SDAS227A): eight D-type transparent latches with two
3-state output paths — the normal `Q` port and a read-back path that
drives the latched data back onto the `D` input pins when `/OERB` is low.

| Pin    | Polarity | Purpose |
|--------|----------|---------|
| `le`   | high     | Latch transparent while high; held while low |
| `pre_n` | low     | Async preset all latches to 1 |
| `clr_n` | low     | Async clear all latches to 0 |
| `oe1_n`, `oe2_n` | low | Q-output enables; Q drives only when both are low |
| `oerb_n` | low    | Read-back enable; drives latched data back onto D bus |

Bidirectional `D` pin split into `d_in` / `d_out` / `d_oe_n` per the
project convention; see [ttl_74x245](../ttl_74x245/README.md). Per the
datasheet timing diagram, host external driver and `d_out` must not
drive simultaneously — the host should release D before lowering
`/OERB`.
