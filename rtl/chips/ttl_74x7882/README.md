# ttl_74x7882 — 36864-bit FIFO memory (2048x18), clocked

2048-word x 18-bit synchronous FIFO. Posedge-clocked write
(`we`) and read (`re`). Async active-low clear. `full` and `empty`
flags.

Writes when full and reads when empty are ignored. This is an FPGA-
synthesis-friendly behavioral model — the original chip's async write/
read timing details are not preserved.
