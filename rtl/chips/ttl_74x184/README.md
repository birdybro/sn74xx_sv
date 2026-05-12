# ttl_74x184 — BCD to binary converter

Takes a 2-digit BCD value `{hi, lo}` packed into 8 bits and emits its
6-bit binary equivalent. Invalid BCD (digits ≥ 10) outputs 0.

Functionally equivalent to the lookup-table the original ROM-based 74184
implemented.
