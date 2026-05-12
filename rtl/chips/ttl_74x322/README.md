# ttl_74x322 — 8-bit shift register with sign extend

Right shift. When `s_e_n=0`, the MSB is replicated (sign extension);
otherwise `din` is the new MSB. Async clear, sync parallel load.
