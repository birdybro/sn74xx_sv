# ttl_74x2253 — dual 4-line to 1-line multiplexer, 3-state outputs

Dual 4-to-1 multiplexer with 3-state outputs. Logically identical to the
[`ttl_74x253`](../ttl_74x253/README.md); the '2253 adds on-chip series
output-damping resistors (an electrical signal-integrity feature, not modeled).

## Function

Two independent 4-to-1 muxes share the 2-bit select `s`; each has its own
active-low output enable:

```
y[0] = g_n[0] ? 0 : d0[s]
y[1] = g_n[1] ? 0 : d1[s]
```

High-Z is modeled as a driven 0 (library convention).

## Unsupported physical behavior

On-chip series output-damping resistors (electrical only); true three-state
high-Z (modeled as driven 0).

## Verification

Exhaustive — all 4096 combinations of `{g_n, s, d0, d1}`. Verilator
`--lint-only -Wall` clean.
