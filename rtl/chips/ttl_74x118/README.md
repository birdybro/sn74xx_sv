# ttl_74x118 — Hex set/reset latch, shared reset

Six S-R latches sharing one async clear. Each `s[i]=1` sets the
corresponding latch to 1; otherwise the latch holds. `clr_n=0` clears
all six.
