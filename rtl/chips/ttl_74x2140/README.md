# ttl_74x2140 — 8k x 18 cache data RAM

8192-word x 18-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

