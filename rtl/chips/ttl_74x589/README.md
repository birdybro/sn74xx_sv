# ttl_74x589 — 8-bit shift register with input latch

Parallel input feeds a latch (controlled by `clk_lat`+`le_n`); the latch's
contents can be loaded into the shifter or shifted out serially via `qh`.
