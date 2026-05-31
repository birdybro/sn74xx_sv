# ttl_74x835 — 8-bit shift register with 2:1 mux-in, latched "B" inputs

An 8-bit parallel/serial-in, serial-out shift register combining a '373
(transparent latch on the B inputs), two '157s (a per-bit 2:1 input mux), and a
'166 (the shift register). Designed for interleaved video bit shifting.
Datasheet: Philips **74F835** (1990).

## Function

```
B latch:  transparent when le high, holds when le low      (b_lat <= db)
2:1 mux:  s_ab=0 -> A inputs (da);  s_ab=1 -> latched B
shift register (rising cp):
   pe_n=0 : parallel load     sr <= mux
   pe_n=1 : shift             DS -> Q0 ... -> Q7   sr <= {sr[6:0], ds}
q7 = Q7 (serial out)
```

Operating modes (datasheet Function Table): parallel-load A, latch B,
parallel-load B from latch, parallel-load B transparent, serial shift.

## Pin mapping (24-pin)

PE=1, CP=2, A inputs D4A..D7A=3..6, B inputs and remaining A inputs on the
respective sides, DS=15, SA/B=14, LE=13, Q7=11, GND=12, Vcc=24.
`da[n]`=DnA, `db[n]`=DnB.

## Verification

Reference-model testbench (event-driven mirror of the B latch + shift register):
directed phase loads a word via each path (A / transparent-B / latched-B) and
shifts it out on Q7, plus a serial-shift-in; random phase soaks 1500 steps.
Verilator `--lint-only -Wall` clean.
