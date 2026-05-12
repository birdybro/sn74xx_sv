# ttl_74x161 — 4-bit synchronous binary counter (async clear, sync load)

Same as `ttl_74x163` except the clear (`clr_n`) is **asynchronous**.
The async clear is in the sensitivity list, so a low pulse on `clr_n`
zeros the counter immediately without waiting for a clock edge.
