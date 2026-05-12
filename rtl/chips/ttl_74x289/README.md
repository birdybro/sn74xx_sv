# ttl_74x289 — 16x4 RAM with inverted outputs

16-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

