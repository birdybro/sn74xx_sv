# ttl_74x219 — 64-bit RAM (16x4)

16-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

