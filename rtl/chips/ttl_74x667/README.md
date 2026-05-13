# ttl_74x667 — 8-bit D-type transparent read-back latch, inverting (3-state)

Inverting-Q sibling of [74x666](../ttl_74x666/README.md). The internal
storage holds the *true* D value (`clr_n` → 0, `pre_n` → 1 still apply
in the natural sense); the Q-port drives the bitwise complement when
enabled, while the read-back path keeps presenting the true stored data
on the D pins.
