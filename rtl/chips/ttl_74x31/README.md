# ttl_74x31 — Hex delay elements (digital-only approximation)

The real 74x31 has six buffers with specific propagation delays
(two 6 ns, two 23-32 ns, two 45-48 ns) used historically as discrete delay
lines for memory timing and skew compensation.

**RTL is a straight-through buffer**: `y = a`. Analog propagation delay
cannot be represented in synthesizable RTL.

If you need a clock-cycle pipeline delay, add an explicit register at the
consuming module. Parameterizing the delay would require knowing the
target clock frequency, which is application-specific and out of scope
for this library.

Marked `[!]` (digital-only approximation) in `tasks.md`.
