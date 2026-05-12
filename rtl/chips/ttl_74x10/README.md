# ttl_74x10 — Triple 3-input NAND gate

DIP-14, three independent 3-input NAND gates.

```
y[i] = ~(a[i] & b[i] & c[i])    for i in 0..2
```

Datasheet: [SN74LS10](https://www.ti.com/lit/gpn/sn74ls10).

Exhaustive 512-vector testbench (2^9 input patterns).
