# ttl_74x99 — 4-bit bidirectional universal shift register

| `{s1, s0}` | Action                                |
| ---------- | ------------------------------------- |
| `00`       | hold                                  |
| `01`       | shift right (`din_right -> q[3]`)     |
| `10`       | shift left  (`din_left -> q[0]`)      |
| `11`       | parallel load `q <= p`                |

Async active-low clear. Same functional structure as the more common
74x194.
