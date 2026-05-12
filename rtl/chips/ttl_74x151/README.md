# ttl_74x151 — 8-to-1 multiplexer with enable

| Signal | Width | Dir | Description                                     |
| ------ | ----- | --- | ----------------------------------------------- |
| `g_n`  | 1     | in  | Enable, active low. When high, `y=0, w=1`.       |
| `s`    | [2:0] | in  | Select                                          |
| `d`    | [7:0] | in  | Data inputs                                     |
| `y`    | 1     | out | Selected data bit (true output)                 |
| `w`    | 1     | out | Complement of `y`                               |

When `g_n=0`, `y = d[s]` and `w = ~y`. When `g_n=1`, `y=0` and `w=1`.
