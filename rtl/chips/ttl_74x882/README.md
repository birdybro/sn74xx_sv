# ttl_74x882 — 32-bit look-ahead carry generator

A high-speed look-ahead carry generator that anticipates the carry across a
group of eight 4-bit adders/ALUs (compatible with the '181A/'881A), giving
full look-ahead for a 32-bit ALU. Datasheet: TI **SN54AS882/SN74AS882** (D2661).
Companion to the 4-bit [`ttl_74x182`](../ttl_74x182/README.md).

## Function

Inputs: carry `cn`, eight propagate `p_n[7:0]` and eight generate `g_n[7:0]`
(active-low, from the ALU P/G outputs). With `p = ~p_n`, `g = ~g_n`, the
datasheet carry equations are:

```
cn_p_8  = g1 + p1·g0 + p1·p0·cn
cn_p_16 = g3 + p3·g2 + p3·p2·g1 + p3·p2·p1·g0 + p3·p2·p1·p0·cn
cn_p_24 = g5 + p5·g4 + … + p5·p4·p3·p2·p1·p0·cn
cn_p_32 = g7 + p7·g6 + … + p7·p6·p5·p4·p3·p2·p1·p0·cn
```

(Carries are produced every eight bits.) The active-low P/G convention matches
`ttl_74x182`.

## Pin mapping (24-pin)

`Cn`=1, `/G0`=2, `/P0`=3, `/G1`=4, `/P1`=5, `/G2`=6, `/P2`=7, `/G3`=8, `/P3`=9,
`/G4`=10, `Cn+16`=11, GND=12, `/P4`=13, … `Cn+24`=17, `/P7`=20, `/G7`=21,
`Cn+32`=22, Vcc=24 (`Cn+8` is a carry output; see datasheet for the exact pin
of each output). Active-low `/P`,`/G` inputs map to `p_n[i]`, `g_n[i]`.

## Verification

Exhaustive — all 2^17 = 131072 combinations of `{cn, p_n, g_n}` checked against
a reference model of the datasheet carry equations. Verilator `--lint-only
-Wall` clean.
