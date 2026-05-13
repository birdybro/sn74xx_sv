# ttl_74x962 — Dual rank 8-bit shift register, register exchange mode

Two 8-bit ranks (A = shift register, B = hold register). On each rising clock
edge, `mode` selects:

| mode | operation                       |
| ---- | ------------------------------- |
| 00   | hold                            |
| 01   | shift rank A (serial_in → A[0]) |
| 10   | copy A into B                   |
| 11   | exchange A and B                |

Datasheet-specific pin/control names may differ; this module exposes the
functional behavior implied by the Wikipedia description.
