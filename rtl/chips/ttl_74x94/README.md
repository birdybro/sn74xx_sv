# ttl_74x94 — 4-bit shift register, dual async presets

Standard left-shift register with two async preset paths. Asserting `pa`
loads `pre_a` immediately; asserting `pb` (with `pa` low) loads `pre_b`.
Otherwise each posedge shifts `din` into the LSB and the rest one to the
left.
