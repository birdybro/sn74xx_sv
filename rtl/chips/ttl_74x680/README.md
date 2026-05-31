# ttl_74x680 — 12-bit address comparator with transparent latch

12-bit address comparator whose result feeds a transparent output latch.
Datasheet: TI **SN54ALS679/680, SN74ALS679/680** (D2661).

> **Part-list correction:** `build/chips.json` labels '680 as the "enable"
> variant and '679 as "latch". The datasheet is the reverse — the **'680 has
> the transparent latch** (C) and the **'679 has the enable** (G). This module
> follows the datasheet.

## Function

The 12-bit counterpart of the [`ttl_74x678`](../ttl_74x678/README.md):
threshold `k = {P3,P2,P1,P0}`, and each `Ai` (i = 1..12) must be **low** if
`i <= k`, **high** if `i > k`. The result (low on match) drives a transparent
D latch via `C`:

```
match = (A1..Ak all 0) & (A(k+1)..A12 all 1)
C high : transparent -> y = ~match
C low  : latched      -> y holds its previous state
```

For `k >= 12` (`P = 12..15`) every `Ai` must be low; the datasheet marks
`P = 12,13,14` as redundant aliases of `P = 15`, which the `i <= k` rule
reproduces automatically.

## Ports

| Port | Dir | Width | Notes |
|------|-----|-------|-------|
| `c`  | in  | 1      | latch enable: high = transparent, low = hold |
| `p`  | in  | 4      | threshold select `P3..P0` (`p[3]`=P3, MSB) |
| `a`  | in  | `[12:1]` | address inputs `A1..A12` (`a[i]` = `Ai`) |
| `y`  | out | 1      | active-low match output (latched) |

`y` is a deliberate level-sensitive latch (`always_latch`).

## Pin mapping (20-pin J/N)

`A1..A9` = pins 1–9, GND = 10, `A10..A12` = 11–13, `P0..P3` = 14–17,
`Y` = 18, `C` = 19, Vcc = 20.

## Verification

Transparent-mode directed rows (every threshold incl. the `P >= 12` aliases),
explicit latch hold sequences, and 2000 random vectors with `C` toggling.
Verilator `--lint-only -Wall` clean.
