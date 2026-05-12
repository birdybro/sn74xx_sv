# ttl_74x433 — 256-bit FIFO (64x4)

64-word x 4-bit synchronous FIFO. Posedge-clocked write
(`we`) and read (`re`). Async active-low clear. `full` and `empty`
flags.

Writes when full and reads when empty are ignored. This is an FPGA-
synthesis-friendly behavioral model — the original chip's async write/
read timing details are not preserved.
