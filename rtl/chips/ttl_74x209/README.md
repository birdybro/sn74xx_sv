# ttl_74x209 — 1024-bit RAM (1024x1)

1024-word x 1-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

