# ttl_74x7292 — Programmable divider / timer

32-bit down-counter that wraps from 0 → n-1, asserting `out` for one clock
each time it reaches zero. The 7292's actual binary divisor select pins are
not preserved — this exposes a single flat binary divisor.
