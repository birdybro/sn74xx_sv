# ttl_74x646 — Octal bus transceiver/register/multiplexer, non-inverting (3-state)

Bidirectional 8-bit transceiver with a posedge-clocked storage register
and a 2:1 real-time/stored mux on each direction. Two-port pins are split
into `_in` / `_out` / `_oe_n` per the project convention; see
[ttl_74x245](../ttl_74x245/README.md) for the pad-wrap pattern.

## Control signals
| Pin    | Polarity | Meaning |
|--------|----------|---------|
| `g_n`  | low      | Output enable (1 → both ports Hi-Z; storage flops still clock) |
| `dir`  | high=A→B | Direction select |
| `sab`  | high     | 1 = use stored A on B output; 0 = real-time A on B output |
| `sba`  | high     | 1 = use stored B on A output; 0 = real-time B on A output |
| `cab`  | posedge  | Clock for A→B storage register |
| `cba`  | posedge  | Clock for B→A storage register |

The storage registers latch on the rising edge of their clock regardless
of `g_n` or `dir`, matching the SN74LS646 datasheet: data is captured on
either bus whether or not the transceiver is currently driving it.
