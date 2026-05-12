# ttl_74x157 — Quad 2-to-1 multiplexer

Four 2-to-1 muxes sharing one `select` and one active-low `g_n` (chip
enable). When `g_n=1`, all outputs are driven low.

```
y = g_n ? 0 : (select ? b : a)
```

256-vector exhaustive testbench.
