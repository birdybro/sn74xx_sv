# ttl_74x4059 — Programmable divide-by-N counter

Behavioral model: a 14-bit down-counter preloaded from `n` each time it
reaches zero, with `out` pulsing high for one clock cycle on every wrap.
The CD4059's actual programming format (Ka/Kb/Kc divider mode + 4 BCD
digits, 1..15999) is not preserved — this exposes a single flat binary
divisor instead.
