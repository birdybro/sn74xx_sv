# ttl_74x823 — 9-bit bus interface flip-flop with clear and clock enable (3-state)

Per SN74AS823A: nine posedge D flops with async `/CLR`, active-low
`/CLKEN` clock-gate, and an output-only `/OE`. `/OE` does not affect the
internal flops — new data can be clocked in while outputs are Hi-Z.
