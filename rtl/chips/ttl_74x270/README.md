# ttl_74x270 — 2048-bit ROM (512x4)

512-word x 4-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

