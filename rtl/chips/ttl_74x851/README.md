# ttl_74x851 — 1-of-16 data selector/multiplexer, latched select, 3-state

16-to-1 multiplexer with complementary 3-state outputs `Y`/`W` and an
**enable-controlled (latched)** select register. Datasheet: TI
**SN54AS850/851** (Dec 1983). The [`ttl_74x850`](../ttl_74x850/README.md) is the
clocked-select sibling; the output stage is identical.

## Function

```
sel  = transparent latch of s, transparent while sc_n low, held when sc_n high
data = d[sel]
Y = (!g_n && !gy_n) ?  data : Z
W = (!g_n && !gw_n) ? ~data : Z
```

Output Function Table:

| /G | /GY | /GW | Y | W |
|----|-----|-----|---|---|
| H  | X   | X   | Z | Z |
| L  | L   | H   | D | Z |
| L  | H   | L   | Z | ~D |
| L  | H   | H   | Z | Z |
| L  | L   | L   | D | ~D |

`D` = level of the selected input. High-Z is modeled as a driven 0. The select
latch is a deliberate transparent latch (`always_latch`).

## Pin mapping (28-pin)

D7..D0 = 1..8, `/GY`=9, `/GW`=10, `/G`=11, `SC`=12, `W`=13, GND=14,
S3..S0 = 15..18, `Y`=19, D15..D8 = 20..27, Vcc=28. (`d[i]`=Di, `s[3]`=S3.)

## Verification

Reference-model testbench: all 16 selects, all 8 output-control combinations,
latch-hold while `sc_n` high, and 2000 randomized steps. Verilator
`--lint-only -Wall` clean.
