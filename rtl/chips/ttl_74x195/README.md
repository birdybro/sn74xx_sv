# ttl_74x195 — 4-bit parallel-access shift register, J-/K serial input

Async clear. When `sh_ld_n=0`, parallel-load `p`. When `sh_ld_n=1`, shift
right with new MSB computed from J and /K inputs in classic JK style:
`next = (j & ~q[3]) | (~k_n & q[3])`.
