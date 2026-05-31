# ttl_74x711 — quint 2-to-1 data selector/multiplexer, 3-state outputs

Five 2-to-1 multiplexers with a common select and a common active-low 3-state
output enable. Datasheet: Signetics **FAST 74F711** (equivalent to two 'F257s).

## Function

```
q[n] = oe_n ? Z : (s ? db[n] : da[n])     // n = 0..4
```

Datasheet Function Table:

| S | OE | Qn |
|---|----|----|
| L | L  | data a |
| H | L  | data b |
| X | H  | Z |

High-Z is modeled as a driven 0 (library convention).

## Pin mapping (20-pin)

D0a=1,D0b=2,D1a=3,D1b=4,D2a=5,D2b=6,D3a=7,D3b=8, NC=9, GND=10, D4a=11,D4b=12,
`/OE`=13, S=14, Q0=15,Q1=16,Q2=17,Q3=18,Q4=19, Vcc=20. (`da[n]`=Dna,
`db[n]`=Dnb, `q[n]`=Qn.)

## Verification

Exhaustive — all 4096 combinations of `{oe_n, s, da, db}`. Verilator
`--lint-only -Wall` clean.
