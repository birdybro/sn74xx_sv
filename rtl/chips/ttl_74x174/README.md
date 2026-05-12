# ttl_74x174 — Hex D flip-flop, common clock, async clear

Six D flip-flops with a shared posedge clock and a shared asynchronous
active-low clear. `q[i] <- d[i]` on rising edge; `clr_n=0` zeros the
register.

74x175 is the 4-bit version that exposes Q-bar outputs.
