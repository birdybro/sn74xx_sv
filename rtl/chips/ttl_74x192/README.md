# ttl_74x192 — 4-bit up/down BCD counter with separate count edges

The original chip uses two clock pins (`clk_up`, `clk_dn`); rising edges
on either advance the counter. Multi-edge async-clocked designs don't
synthesize cleanly, so this RTL uses a system clock `sys_clk` plus
edge-detected `clk_up` / `clk_dn` enable signals. The behavior is
equivalent for any synchronous design where `clk_up` / `clk_dn` are
slower than `sys_clk`.

Async clear (active high) and async load (active low). Carry / borrow
outputs are based on the count value and clock-pin state.
