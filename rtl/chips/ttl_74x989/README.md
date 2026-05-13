# ttl_74x989 — 64-bit RAM (16x4), inverting output

16-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.
Outputs are inverted.
