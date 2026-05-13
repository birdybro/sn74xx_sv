# ttl_74x990 — 8-bit transparent read-back latch (3-state I/O on D)

Per SN74ALS990 (SDAS027B). A simpler relative of
[ttl_74x666](../ttl_74x666/README.md): the Q outputs are always driven
("true logic outputs", no Q-side enable), and the only 3-state pad is on
the bidirectional D bus, driven by the chip when `/OERB` is low to read
back the latched data. No clear or preset.
