# ttl_74x1403 — 8-bit bus receiver plus 4-bit bus driver

Two independent registered sections in one package: an 8-bit receiver
(`bus_in` → `rx_reg` → `rx_out`) and a 4-bit driver (`tx_in` → `tx_reg` →
`bus_out`). Each section has its own clock and an active-low output enable.
