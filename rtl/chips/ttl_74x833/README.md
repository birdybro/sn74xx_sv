# ttl_74x833 — 8-bit to 9-bit parity bus transceiver, non-inverting (3-state)

Per SN74ABT833 (SCBS195C): an octal transceiver with a 9th parity bit
and a sticky error-flag register. Direction and parity behavior are
selected by `{oea_n, oeb_n}`:

| `oea_n` | `oeb_n` | Direction | PARITY pin behavior |
|---------|---------|-----------|---------------------|
| H | H | Isolation — A/B/PARITY all Hi-Z | — |
| H | L | A → B, normal odd-parity | drive `~^a_in` |
| L | H | B → A, parity check | input |
| L | L | A → B, **inverted** parity (forced error) | drive `^a_in` |

The error register is async-cleared by `clr_n` low (`err_n=1`). On each
`posedge clk` it samples `point_p = ^{b_in, parity_in}` and latches
`err_reg <= err_reg & point_p` (sticky-low: once a parity error is
sampled the flag stays asserted until `clr_n` clears it).

The chip's `/ERR` is open-collector; only the logical value is modeled.
