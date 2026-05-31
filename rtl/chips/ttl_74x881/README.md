# ttl_74x881 — 4-bit arithmetic logic unit / function generator

The Advanced-Schottky member of the '181 ALU family: identical pin set and
function table to the [`ttl_74x181`](../ttl_74x181/README.md). Datasheet: TI
**SN54AS881A/SN74AS881A** (D2661); function verified against the SN74181 table
(Fairchild DM74LS181, DS009821).

> The standalone 'AS881A page in the available databook scan is "advance
> information"; the device is the well-documented '181 ALU (same operands,
> S0–S3, M, Cn, F, Cn+4, A=B, P̄/Ḡ pinset), reproduced and exhaustively verified
> here.

## Function

- `m = 1`: 16 **logic** functions of A, B selected by `s`.
- `m = 0`: 16 **arithmetic** functions (with carry `cn`) selected by `s`.
- Outputs: `f`, carry `cn_p_4`, `a_eq_b`, and active-low carry-propagate `p_n` /
  generate `g_n`.

Implemented active-high (matching `ttl_74x181`). The 'AS881A datasheet labels
the operand/F pins active-low (`Ā`/`B̄`/`F̄`) — the same silicon used in the
active-low convention; present complemented operands to obtain the active-low
column of the '181 function table.

## Pin mapping (24-pin, datasheet active-low labels)

`/B0`=1, `/A0`=2, S3=3, S2=4, S1=5, S0=6, Cn=7, M=8, `/F0`=9, `/F1`=10,
`/F2`=11, GND=12, `/F3`=13, A=B=14, `/P`=15, Cn+4=16, `/G`=17, `/A3`=18,
`/B3`=19, `/A2`=20, `/B2`=21, `/A1`=22, `/B1`=23, Vcc=24.

## Verification

Exhaustive — all 2^14 = 16384 combinations of `{a, b, s, m, cn}` checked
against a reference model of the SN74181 function table (F, carry, A=B, P, G).
Verilator `--lint-only -Wall` clean.
