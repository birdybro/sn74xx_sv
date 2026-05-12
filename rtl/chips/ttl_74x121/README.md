# ttl_74x121 — Monostable multivibrator (digital approximation)

The original chip produces a pulse whose width is set by an external R-C
network. RTL replaces R-C timing with a parameterized `PULSE_CYCLES`-long
pulse synchronous to an explicit clock.

Marked `digital_only_approximation` in `build/chips.json` because R-C
timing is analog and not modelable in synthesizable RTL.

The Schmitt-trigger input `b` is treated as a plain logic input.
