# ttl_74x677 — 16-bit address comparator with enable

16-bit address comparator with an active-low enable. Datasheet: TI
**SN74ALS677A** (SDAS012C).

## Function

The four `P` inputs (`P3..P0`, normally hardwired to a preprogrammed address)
form an unsigned threshold `k = {P3,P2,P1,P0}` (0–15). An internal decoder
maps `k` to a required level on each of the sixteen address inputs `A1..A16`:

- `A1 .. Ak` must be **low**
- `A(k+1) .. A16` must be **high**

When enabled (`g_n = 0`), the active-low match output `Y` goes **low** iff that
pattern holds. When disabled (`g_n = 1`), `Y` is high regardless of `A`/`P`.

```
match = (A1..Ak all 0) & (A(k+1)..A16 all 1)
y     = g_n ? 1'b1 : ~match
```

Datasheet example: `P = 0111b = 7` ⇒ `A1..A7` must be low and `A8..A16` high to
drive `Y` low. `Y` is active-low (low = match); the datasheet labels the pin
`Y` (no overbar), so the port keeps that name.

## Ports

| Port | Dir | Width | Notes |
|------|-----|-------|-------|
| `g_n` | in  | 1      | active-low enable (datasheet `/G`) |
| `p`   | in  | 4      | threshold select `P3..P0` (`p[3]`=P3, MSB) |
| `a`   | in  | `[16:1]` | address inputs `A1..A16` (`a[i]` = `Ai`) |
| `y`   | out | 1      | active-low match output |

## Pin mapping (24-pin DW/NT)

`A1..A11` = pins 1–11, GND = 12, `A12..A16` = 13–17, `P0..P3` = 18–21,
`Y` = 22, `/G` = 23, Vcc = 24.

## Verification

Input space is 21 bits (too large to exhaust). The testbench covers:

- **All 16 datasheet rows**: for each threshold `k`, the canonical matching
  address drives `Y` low; the disabled case and single-bit-flipped mismatches
  drive `Y` high (64 directed vectors).
- **1000 seeded-random vectors** checked against a reference model.

Verilator `--lint-only -Wall` clean.

## Related

[`ttl_74x680`](../ttl_74x680/README.md) is the 12-bit enable version;
[`ttl_74x678`](../ttl_74x678/README.md) / [`ttl_74x679`](../ttl_74x679/README.md)
are the latched 16-/12-bit versions.
