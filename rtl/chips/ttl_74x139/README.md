# ttl_74x139 — Dual 2-to-4 line decoder/demultiplexer

Two independent 2-to-4 decoders share the package. Each has:

- 2 select bits (`a[1:0]` for decoder 0, `a[3:2]` for decoder 1)
- 1 active-low enable (`g_n[0]` / `g_n[1]`)
- 4 active-low outputs (`y_n[3:0]` / `y_n[7:4]`)

When a decoder is disabled (its `g_n` is high), all four of its outputs
are high. When enabled, the selected output drops low and the other
three stay high.

64-vector exhaustive testbench.
