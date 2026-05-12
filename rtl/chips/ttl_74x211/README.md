# ttl_74x211 — 144-bit RAM (16x9) with output latch

16-word x 9-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

