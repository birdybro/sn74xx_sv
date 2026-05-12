# ttl_74x213 — 192-bit RAM (16x12)

16-word x 12-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

