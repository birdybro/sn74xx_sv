# ttl_74x110 — AND-gated JK MS FF, data lockout

The data-lockout behavior of the original chip (J/K must be stable
through a clock pulse, not just the edge) is not preserved in
posedge-clocked RTL; the function is otherwise the same as `ttl_74x67`.
