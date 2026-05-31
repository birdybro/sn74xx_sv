# ttl_74x850 — 1-of-16 data selector/multiplexer, clocked select, 3-state

16-to-1 multiplexer with complementary 3-state outputs `Y`/`W` and a
**clock-controlled** select register. Datasheet: TI **SN54AS850/851** (Dec 1983).
The [`ttl_74x851`](../ttl_74x851/README.md) is the latched-select sibling.

## Function

```
sel  = s captured on posedge clk (held otherwise)   // Input Selection Table
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

`D` = level of the selected input. High-Z is modeled as a driven 0.

## Pin mapping (28-pin)

D7..D0 = 1..8, `/GY`=9, `/GW`=10, `/G`=11, `CLK`=12, `W`=13, GND=14,
S3..S0 = 15..18, `Y`=19, D15..D8 = 20..27, Vcc=28. (`d[i]`=Di, `s[3]`=S3.)

## Verification

Reference-model testbench: all 16 selects (two data patterns), all 8
output-control combinations, select-hold across a clock-less input change, and
2000 randomized steps. Verilator `--lint-only -Wall` clean.
