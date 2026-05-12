# ttl_74l71 — AND-gated R-S master-slave FF (low-power)

R-S flip-flop with `S = s1 & s2 & s3`, `R = r1 & r2 & r3`. Async preset
and clear. S=R=1 is illegal on the real chip; this RTL gives S priority.
