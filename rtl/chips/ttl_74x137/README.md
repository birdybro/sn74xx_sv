# ttl_74x137 — 3-to-8 decoder with latched address, inverting outputs

Address is captured in a transparent latch when `le=1`. When `le=0`, the
last sampled address is held. `en_n=1` blanks the outputs to all-high.
