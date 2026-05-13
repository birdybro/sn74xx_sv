# ttl_74x748 — 8-to-3 priority encoder, glitch-less

Functionally identical to [ttl_74x148](../ttl_74x148/README.md). The
SN74LS748 differs only in being "glitch-less" — output transitions are
shaped to avoid intermediate glitches during simultaneous input changes
— which is a structural/timing property not represented in steady-state
RTL.
