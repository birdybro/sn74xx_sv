# ttl_74x7080 — 16-bit parity generator / checker

Combinationally computes the parity of 16 data bits plus an existing parity
input. `sum_even = 1` when the total number of ones (including `parity_in`)
is even; `sum_odd = 1` when it is odd.
