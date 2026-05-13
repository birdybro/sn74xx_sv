# ttl_74x645 — Octal bus transceiver, non-inverting (3-state)

Functionally equivalent to 74x245 (dir + oe_n control, non-inverting both
directions, 3-state outputs). The 'LS645 is the higher-drive industrial-
temperature sibling of the 'LS245; the RTL truth table is identical.

Bidirectional pins are split into `_in` / `_out` / `_oe_n`; see
[ttl_74x245](../ttl_74x245/README.md) for the full mapping table.
