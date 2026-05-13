# ttl_74x4094 — 8-bit 3-state shift register / latch

Serial shift on posedge `clk`, transparent storage latch on `stb`, and 3-state
parallel output gated by `oe`. `qs1` and `qs2` expose the shift-out MSB.
