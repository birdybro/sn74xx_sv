# ttl_74x651 — Octal bus transceiver/register, inverting (3-state)

Registered transceiver with the 638/639 dual-enable control style (`gab`
high-enables A→B, `gba_n` low-enables B→A) rather than 74x646's combined
`/G + DIR`. Each direction selects between real-time and stored data via
SAB/SBA; storage registers latch on the rising edges of CAB/CBA.

Both outputs are bitwise complements of the chosen source (real-time
input or stored value).
