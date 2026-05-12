# ttl_74x87 — 4-bit true/complement, zero/one element

Two control inputs select between four output modes:

| `s_complement` | `s_const` | `y`       |
|----------------|-----------|-----------|
| 0              | 0         | `b`       |
| 0              | 1         | `~b`      |
| 1              | 0         | `0000`    |
| 1              | 1         | `1111`    |

64-vector exhaustive testbench.
