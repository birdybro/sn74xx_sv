# ttl_74x147 — 10-to-4 priority encoder (decimal to BCD)

9 active-low inputs `i_n[9:1]` (input 0 is implicit when all inputs are
high). Outputs `y_n[3:0]` are the active-low BCD encoding of the highest
asserted input.

When `i_n[9]=0`, output is BCD 9 (active low). When all `i_n[]=1`, output
is BCD 0 (active low, i.e., `y_n=4'b1111`).
