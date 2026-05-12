# ttl_74x590 — 8-bit binary counter with output register

Counter `cnt` advances on `clk_cnt` when `ce_n=0`; `clk_reg` captures `cnt`
into `outreg`, which is driven on `q` when `oe_n=0`.
