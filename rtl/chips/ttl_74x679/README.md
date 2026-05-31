# ttl_74x679 — 12-bit address comparator with enable

12-bit address comparator with an active-low enable. Datasheet: TI
**SN54ALS679/SN74ALS679** (D2661).

> **Part-list correction:** `build/chips.json` labels '679 as the "latch"
> variant and '680 as "enable". The datasheet is the reverse — the **'679 has
> the enable** input (G) and the **'680 has the transparent latch** (C). This
> module follows the datasheet.

## Function

The 12-bit counterpart of the [`ttl_74x677`](../ttl_74x677/README.md). The four
`P` inputs form an unsigned threshold `k = {P3,P2,P1,P0}`. For each address
input `Ai` (i = 1..12):

- `Ai` must be **low** if `i <= k`
- `Ai` must be **high** if `i > k`

When enabled (`g_n = 0`), the active-low output `Y` goes **low** iff every `Ai`
meets its requirement; disabled (`g_n = 1`) ⇒ `Y` high.

```
match = (A1..Ak all 0) & (A(k+1)..A12 all 1)
y     = g_n ? 1'b1 : ~match
```

For `k >= 12` (`P = 12..15`) every `Ai` must be low. The datasheet marks
`P = 12,13,14` as redundant aliases of `P = 15`; the `i <= k` rule reproduces
this automatically.

## Ports

| Port | Dir | Width | Notes |
|------|-----|-------|-------|
| `g_n` | in  | 1      | active-low enable (datasheet `/G`) |
| `p`   | in  | 4      | threshold select `P3..P0` (`p[3]`=P3, MSB) |
| `a`   | in  | `[12:1]` | address inputs `A1..A12` (`a[i]` = `Ai`) |
| `y`   | out | 1      | active-low match output |

## Pin mapping (20-pin J/N)

`A1..A9` = pins 1–9, GND = 10, `A10..A12` = 11–13, `P0..P3` = 14–17,
`Y` = 18, `/G` = 19, Vcc = 20.

## Verification

Exhaustive — all 2^17 = 131072 combinations of `{g_n, p, a}` checked against a
reference model (covers every threshold including the `P >= 12` aliases).
Verilator `--lint-only -Wall` clean.
