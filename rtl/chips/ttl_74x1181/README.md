# ttl_74x1181 — 4-bit arithmetic logic unit / function generator

A member of the '181 ALU family (a speed grade): identical pin set and function
table to the [`ttl_74x181`](../ttl_74x181/README.md) and
[`ttl_74x881`](../ttl_74x881/README.md). Datasheet: TI **SN54AS1181/SN74AS1181**
(D1915, May 1985).

> The datasheet's own addition-time table groups `'AS1181` with `'AS181A` and
> `'AS882`, confirming functional identity with the '181 ALU.

## Function

- `m = 1`: 16 **logic** functions of A, B selected by `s`.
- `m = 0`: 16 **arithmetic** functions (with carry `cn`) selected by `s`.
- Outputs: `f`, carry `cn_p_4`, `a_eq_b`, active-low carry-propagate `p_n` /
  generate `g_n`.

Implemented active-high (matching `ttl_74x181`/`ttl_74x881`). The 'AS1181
datasheet labels the operand/F pins active-low (`Ā`/`B̄`/`F̄`).

## Pin mapping (24-pin, datasheet active-low labels)

`/B0`=1, `/A0`=2, S3=3, S2=4, S1=5, S0=6, Cn=7, M=8, `/F0`=9, `/F1`=10,
`/F2`=11, GND=12, `/F3`=13, A=B=14, `/P`=15, Cn+4=16, `/G`=17, `/A3`=18,
`/B3`=19, `/A2`=20, `/B2`=21, `/A1`=22, `/B1`=23, Vcc=24.

## Verification

Exhaustive — all 2^14 = 16384 combinations of `{a, b, s, m, cn}` checked
against a reference model of the SN74181 function table. Verilator
`--lint-only -Wall` clean.
