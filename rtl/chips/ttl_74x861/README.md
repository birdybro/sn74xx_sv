# ttl_74x861 — 10-bit bus transceiver, non-inverting (3-state)

Per SN74ABT861 (SCBS199C). Independent active-low enables for each
direction:

| `oeab_n` | `oeba_n` | Operation |
|----------|----------|-----------|
| L | H | A → B |
| H | L | B → A |
| H | H | Isolation |
| L | L | Both directions drive (forms a bus latch with feedback) |

Per project convention each bidirectional port is split into `_in`,
`_out`, `_oe_n`.
