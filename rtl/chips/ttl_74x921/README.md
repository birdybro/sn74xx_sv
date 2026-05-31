# ttl_74x921 — 1024-bit RAM (256x4)

256-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

