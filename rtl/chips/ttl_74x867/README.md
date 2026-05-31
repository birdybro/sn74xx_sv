# ttl_74x867 — synchronous 8-bit up/down counter

Fully programmable 8-bit up/down counter with mode select, synchronous load,
count enables, and a ripple-carry output for cascading. Datasheet: TI
**SN74ALS867A / SN74AS867** (SDAS115C).

## Function

| S1 | S0 | Function |
|----|----|----------|
| L  | L  | Clear (async) |
| L  | H  | Count down (when `enp_n` & `ent_n` low) |
| H  | L  | Load `d` (synchronous) |
| H  | H  | Count up (when `enp_n` & `ent_n` low) |

`rco_n` (active low) pulses low at terminal count in the active direction
(`0xFF` up, `0x00` down), gated by `ent_n`. Outputs are always driven (no
output enable). `d[0]`=A/QA is the LSB.

## Pin mapping (24-pin)

S0=1, S1=2, A–H=3–10, `/ENT`=11, GND=12, `/RCO`=13, CLK=14, QH–QA=15–22,
`/ENP`=23, Vcc=24.

## Verification

Reference-model testbench: directed checks for clear, load, count up/down,
both wraps and `rco_n`, enable-hold, and the async clear, plus 2000 random
steps. Verilator `--lint-only -Wall` clean.
