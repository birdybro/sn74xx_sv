# ttl_74x712 — quint 3-to-1 data selector/multiplexer

Five 3-to-1 multiplexers with common selects `S0`, `S1`. Datasheet: Signetics
**FAST 74F712** (equivalent to five 'F153s). No output enable — outputs are
always driven, non-inverting.

## Function

```
q[n] = s1 ? dc[n] : (s0 ? db[n] : da[n])   // n = 0..4
```

Datasheet Function Table:

| S0 | S1 | Qn |
|----|----|----|
| L  | L  | data a |
| H  | L  | data b |
| X  | H  | data c |

## Pin mapping (24-pin)

D0a=1,D1a=2,D2a=3,D3a=4,D4a=5, D0b=6,D1b=7,D2b=8,D3b=9,D4b=10, S0=11, GND=12,
S1=13, Q4=14,Q3=15,Q2=16,Q1=17,Q0=18, D4c=19,D3c=20,D2c=21,D1c=22,D0c=23,
Vcc=24. (`da[n]`=Dna, `db[n]`=Dnb, `dc[n]`=Dnc.)

## Verification

Exhaustive — all 2^17 = 131072 combinations of `{s1, s0, da, db, dc}`.
Verilator `--lint-only -Wall` clean.
