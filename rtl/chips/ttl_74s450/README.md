# ttl_74s450 — 8192-bit PROM (1024x8)

1024-word x 8-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

