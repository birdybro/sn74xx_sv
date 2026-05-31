# ttl_74x678 — 16-bit address comparator with transparent latch

16-bit address comparator whose result feeds a transparent output latch.
Datasheet: TI **SN54ALS677/678, SN74ALS677/678** (D2661).

## Function

The comparison core is identical to the [`ttl_74x677`](../ttl_74x677/README.md):
threshold `k = {P3,P2,P1,P0}`, and each `Ai` (i = 1..16) must be **low** if
`i <= k`, **high** if `i > k`. The result (low on match) drives a transparent
D latch via `C` instead of an enable:

```
match = (A1..Ak all 0) & (A(k+1)..A16 all 1)
C high : transparent -> y = ~match
C low  : latched      -> y holds its previous state
```

(Datasheet function table: in the `'ALS678` column, `C = H` tracks the
comparison; `C = L` latches `Y`.)

## Ports

| Port | Dir | Width | Notes |
|------|-----|-------|-------|
| `c`  | in  | 1      | latch enable: high = transparent, low = hold |
| `p`  | in  | 4      | threshold select `P3..P0` (`p[3]`=P3, MSB) |
| `a`  | in  | `[16:1]` | address inputs `A1..A16` (`a[i]` = `Ai`) |
| `y`  | out | 1      | active-low match output (latched) |

`y` is a deliberate level-sensitive latch (`always_latch`) — this is the chip's
real behavior. Intended for FPGA fabric that supports latches.

## Pin mapping (24-pin JT/NT)

`A1..A11` = pins 1–11, GND = 12, `A12..A16` = 13–17, `P0..P3` = 18–21,
`Y` = 22, `C` = 23, Vcc = 24.

## Verification

- **Transparent mode**: every datasheet threshold row (match + single-bit
  mismatches).
- **Latch hold**: explicit sequences that latch a value, change `A`/`P` while
  `C` is low (output must hold), then reopen `C` (output must resume tracking).
- **2000 random vectors** with `C` toggling, expected state updated only while
  transparent.

Verilator `--lint-only -Wall` clean.

## Related

[`ttl_74x680`](../ttl_74x680/README.md) is the 12-bit latch version;
[`ttl_74x677`](../ttl_74x677/README.md) / [`ttl_74x679`](../ttl_74x679/README.md)
are the 16-/12-bit **enable** versions.
