# ttl_74x571 — 512x4 RAM

512-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

