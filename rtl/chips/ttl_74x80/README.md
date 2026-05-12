# ttl_74x80 — Gated 1-bit full adder

```
A = a1 & a2
B = b1 & b2
{c_out, sum} = A + B + ~c_in_n
sum_n = ~sum
```

`c_in_n` is active low (carry-in inverted, per datasheet).
