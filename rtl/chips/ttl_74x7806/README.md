# ttl_74x7806 — 4608-bit FIFO memory (256x18)

256-word x 18-bit synchronous FIFO. Posedge-clocked write
(`we`) and read (`re`). Async active-low clear. `full` and `empty`
flags.

Writes when full and reads when empty are ignored. This is an FPGA-
synthesis-friendly behavioral model — the original chip's async write/
read timing details are not preserved.
