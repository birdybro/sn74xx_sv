# ttl_74x20 — Dual 4-input NAND gate

DIP-14, two 4-input NAND gates.

```
y[i] = ~(a[i] & b[i] & c[i] & d[i])    for i in 0..1
```

Datasheet: [SN74LS20](https://www.ti.com/lit/gpn/sn74ls20). Exhaustive
256-vector testbench.
