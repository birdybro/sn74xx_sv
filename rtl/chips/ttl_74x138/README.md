# ttl_74x138 — 3-to-8 line decoder / demultiplexer

Active-low outputs. Three enables — one active-high (`g1`) and two
active-low (`g2a_n`, `g2b_n`). All three must be asserted for the chip
to decode.

```
enable = g1 & ~g2a_n & ~g2b_n
y_n = (enable) ? (8'hFF with bit a cleared) : 8'hFF
```

| Signal     | Width | Dir | Description              |
| ---------- | ----- | --- | ------------------------ |
| `a`        | [2:0] | in  | 3-bit address select     |
| `g1`       | 1     | in  | Enable, active high      |
| `g2a_n`    | 1     | in  | Enable, active low       |
| `g2b_n`    | 1     | in  | Enable, active low       |
| `y_n`      | [7:0] | out | Active-low decoded outputs |

64-vector exhaustive testbench (all combinations of `a` × `g1` × `g2a_n` × `g2b_n`).
