# ttl_74x910 — 256-bit RAM (64x4)

64-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

