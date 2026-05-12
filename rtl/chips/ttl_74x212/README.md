# ttl_74x212 — 144-bit RAM (16x9)

16-word x 9-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

