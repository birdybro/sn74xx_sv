# ttl_74x670 — 4-word × 4-bit register file (3-state outputs)

Four 4-bit storage cells with independent read and write ports. The
addressed write cell is *transparent* while `/GW` is low (it follows
`D`); the addressed read cell drives `Q` whenever `/GR` is low. Because
read and write addresses are independent, a write to one cell can be
observed on a different cell's read in the same instant.

| Pin       | Polarity | Purpose |
|-----------|----------|---------|
| `gw_n`    | low      | Write enable (level-sensitive) |
| `gr_n`    | low      | Output enable for `q` |
| `wa[1:0]` | —        | Write address (corresponds to `WB,WA` on the chip) |
| `ra[1:0]` | —        | Read address |
