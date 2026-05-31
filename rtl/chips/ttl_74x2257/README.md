# ttl_74x2257 — quad 2-line to 1-line multiplexer, 3-state outputs

Quad 2-to-1 multiplexer, non-inverting, 3-state outputs. Logically identical to
the [`ttl_74x257`](../ttl_74x257/README.md); the '2257 adds on-chip series
output-damping resistors (an electrical signal-integrity feature, not modeled).

## Function

Four 2-to-1 muxes share a common select and an active-low output enable:

```
y = g_n ? 0 : (select ? b : a)
```

High-Z is modeled as a driven 0 (library convention).

## Unsupported physical behavior

On-chip series output-damping resistors (electrical only); true three-state
high-Z (modeled as driven 0).

## Verification

Exhaustive — all 1024 combinations of `{g_n, select, a, b}`. Verilator
`--lint-only -Wall` clean.
