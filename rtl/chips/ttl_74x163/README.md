# ttl_74x163 — 4-bit synchronous binary counter (sync clear, sync load)

Priority (per posedge clk): `clr_n` > `load_n` > count > hold.

| Signal   | Width | Dir | Description                          |
| -------- | ----- | --- | ------------------------------------ |
| `clk`    | 1     | in  | Positive-edge clock                  |
| `clr_n`  | 1     | in  | Synchronous clear, active low        |
| `load_n` | 1     | in  | Synchronous load, active low         |
| `enp`    | 1     | in  | Count enable P                       |
| `ent`    | 1     | in  | Count enable T (gates `rco`)         |
| `d`      | [3:0] | in  | Load data                            |
| `q`      | [3:0] | out | Counter state                        |
| `rco`    | 1     | out | Ripple carry out: `(q==F) & ent`     |

The 74x161 is functionally identical except that its clear is **asynchronous**;
the 74x163 has both clear and load synchronous to the rising clock edge.
The 74x160/162 are the BCD-decade variants.

Testbench covers: sync clear, sync load, count up across the full range,
ripple-carry generation, hold behaviour with `enp=0` or `ent=0`,
priority `clr_n > load_n > count`.
