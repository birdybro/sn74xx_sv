# ttl_74x288 — 256-bit PROM (32x8)

32-word x 8-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

