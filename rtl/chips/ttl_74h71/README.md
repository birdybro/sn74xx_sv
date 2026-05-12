# ttl_74h71 — AND-OR-gated JK master-slave FF, preset

JK flip-flop with AND-OR-gated inputs:
```
J = (j1a & j1b) | (j2a & j2b)
K = (k1a & k1b) | (k2a & k2b)
```
Async active-low preset. Posedge-clocked (master-slave timing not modeled).
