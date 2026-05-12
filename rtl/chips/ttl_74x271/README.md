# ttl_74x271 — 2048-bit ROM (256x8)

256-word x 8-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

