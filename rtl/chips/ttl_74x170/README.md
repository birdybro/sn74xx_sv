# ttl_74x170 — 16-bit register file (4x4)

Four 4-bit registers with separate read and write address ports.
Synchronous write on posedge `clk` when `!we_n`; async read.
