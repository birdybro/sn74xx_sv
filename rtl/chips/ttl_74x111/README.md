# ttl_74x111 — Dual JK MS FF, data lockout, reset, set

Same logic as `ttl_74x76` from the perspective of FPGA synthesis (data
lockout is a master-slave timing detail that is not preserved when
moving to posedge-clocked RTL).
