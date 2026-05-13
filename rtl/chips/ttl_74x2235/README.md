# ttl_74x2235 — 18432-bit bidirectional FIFO memory (2x1024x9)

Two independent 1024-deep × 9-bit FIFOs sharing a common reset:
- `*_ab`: A-side writes, B-side reads
- `*_ba`: B-side writes, A-side reads

Each direction has its own write clock, read clock, write strobe (`wr_n`),
read strobe (`rd_n`), data bus, and empty/full flags (active-low).

Exact pinout of physical SN74x2235 variants is part-specific; this module
exposes the behavioral interface needed by callers.
