# ttl_74x83 — 4-bit binary full adder with fast carry

```
{c4, sum} = a + b + c0
```

| Signal | Width | Dir | Description       |
| ------ | ----- | --- | ----------------- |
| `a`    | [3:0] | in  | A operand         |
| `b`    | [3:0] | in  | B operand         |
| `c0`   | 1     | in  | Carry in          |
| `sum`  | [3:0] | out | Sum               |
| `c4`   | 1     | out | Carry out         |

512-vector exhaustive testbench (2^9 input combinations).
