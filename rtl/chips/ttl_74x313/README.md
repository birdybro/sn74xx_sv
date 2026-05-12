# ttl_74x313 — memory chip

16-word x 12-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

