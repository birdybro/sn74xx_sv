# ttl_74x7202 — 9216-bit FIFO memory (1024x9)

1024-word x 9-bit synchronous FIFO. Posedge-clocked write
(`we`) and read (`re`). Async active-low clear. `full` and `empty`
flags.

Writes when full and reads when empty are ignored. This is an FPGA-
synthesis-friendly behavioral model — the original chip's async write/
read timing details are not preserved.
