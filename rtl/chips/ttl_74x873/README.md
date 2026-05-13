# ttl_74x873 — Dual 4-bit transparent latch with clear (3-state)

Per SN74ALS873B/AS873A (SDAS036D): two independent 4-bit transparent
latches sharing only Vcc and ground. Each unit has its own:

- `leN` — latch enable (active high; transparent while high)
- `clrN_n` — asynchronous clear (active low)
- `oeN_n` — output enable (active low; only gates output, doesn't affect storage)
- `dN[3:0]` / `qN[3:0]` — data in / out

Pin ordering and 24-pin layout match the datasheet.
