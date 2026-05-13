# ttl_74x843 — 9-bit bus-interface transparent latch with /PRE, /CLR (3-state)

Per SN74ALS843 (SDAS232A): nine transparent latches. `/PRE` low forces
all stored bits to 1; `/CLR` low forces them to 0; preset takes priority
over clear. While `le` is high the latches are transparent; when `le`
goes low the captured value is held. `/OE` only gates the output buffers.
