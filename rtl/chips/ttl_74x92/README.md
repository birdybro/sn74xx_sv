# ttl_74x92 — Divide-by-12 counter (÷2 and ÷6)

Two independent sections: a ÷2 toggle (`q_a`) and a 3-bit mod-6 counter
(`q_b`, `q_c`, `q_d`). For full ÷12, cascade `q_a` into `clk_b`.

Reset is asynchronous when `r0_1 & r0_2 = 1`.
