# ttl_74x89 — 16x4 RAM with inverted outputs

Outputs are inverted (`data_out_n = ~mem[addr]`). Sync write, async read.
Original chip is async-write with open-collector outputs — neither modeled.
