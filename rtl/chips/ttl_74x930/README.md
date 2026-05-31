# ttl_74x930 — 1024-bit RAM (1024x1), three chip selects

1024-word x 1-bit RAM. Sync write on posedge `clk` when
`!cs_n && !we_n`; async read. `INIT_FILE` parameter loads contents.

Modeling note: the real device has **three** chip-select inputs (the chip is
selected only when all are in their active state). They are modeled here as the
single active-low `cs_n` — drive it with the AND/decode of the three selects.
The original is an asynchronous SRAM; per library convention it is modeled with
a synchronous (posedge-`clk`) write for clean FPGA block-RAM inference.

