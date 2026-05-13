# ttl_74x668 — Synchronous 4-bit BCD decade up/down counter

Decade (mod-10) synchronous up/down counter with synchronous load, two
count enables, and a terminal-count ripple-carry output. Logically
identical to [ttl_74x168](../ttl_74x168/README.md); the SN74LS668 differs
only in package/family. Active-high `enp`/`ent` enables and active-low
`rco_n`/`load_n` are assumed to match the 168 convention — verify against
the SN74LS668 datasheet if a deployment-critical polarity question
arises.
