# ttl_74x91 — 8-bit shift register, SISO with gated input

Input is `a & b` (AND-gated). Each posedge shifts left:
`sr <= {sr[6:0], a & b}`. Outputs `q_h` (sr[7]) and its complement.
