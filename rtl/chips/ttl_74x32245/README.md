# ttl_74x32245 — 36-bit bus transceiver (3-state)

36-bit version of [ttl_74x245](../ttl_74x245/README.md). The exact
split-enable layout of a specific 32245 part may vary; this module uses
a single shared `dir` + `/OE` for the whole 36-bit transceiver — verify
against the deployment-target datasheet.
