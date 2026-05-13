# ttl_74x4017 — 5-stage ÷10 Johnson counter

Decade counter with ten decoded outputs (`q[0..9]`, one-hot).  Counts on
positive edges of `clk` when `clk_en_n` is low; `rst` asynchronously forces
count = 0 (`q[0] = 1`). `cout` is high for counts 0–4 and low for 5–9 so it
can clock the next 4017 in a decade chain.
