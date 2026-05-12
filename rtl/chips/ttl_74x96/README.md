# ttl_74x96 — 5-bit shift register with async OR-preset

Five-stage right shift. Async active-low clear; async preset that
OR-loads `pre_d` into `q` (set bits become 1; bits already 1 stay 1).
This matches the bit-by-bit async preset in the original datasheet.
