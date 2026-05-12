# ttl_74x200 — 256-bit RAM (256x1)

256-word x 1-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

