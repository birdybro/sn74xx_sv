# ttl_74x81 — 16x1 RAM

16-word x 1-bit RAM. Synchronous write (posedge clk when `!cs_n && !we_n`),
async read. When `cs_n` is high the output is 0 (project muxed-zero
convention; the original chip has open-collector output and would be
high-Z).

`INIT_FILE` parameter accepts a `$readmemb` file path for initial memory
contents. Default is uninitialized.

## Deviation

The original part has async-write timing; this RTL adds an explicit clock
for FPGA synthesis friendliness.
