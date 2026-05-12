# ttl_74x01 — Quad 2-input NAND, open-collector outputs

| Field         | Value                                              |
| ------------- | -------------------------------------------------- |
| Original part | 74x01 (74LS01, 74HC01, …)                          |
| Function      | Quad 2-input NAND, open-collector outputs          |
| Package       | DIP-14                                             |
| Datasheet     | [SN74LS01](https://archive.org/details/bitsavers_tidataBookVol2_45945352/page/n61/) |

## Behavior

```
y[i] = ~(a[i] & b[i])    for i in 0..3
```

Logic is identical to 74x00; the difference is the physical output driver.

## What is *not* modeled

**Open-collector outputs.** The real chip's output transistor either pulls
low or floats. Multiple OC outputs tied to one net with an external pull-up
form a wired-AND. This RTL drives outputs normally. If you need wired-AND,
synthesize it explicitly with `&` at the consuming module. See
`docs/unsupported_physical_behavior.md`.

## Pinout

74x01 uses a different pin map from 74x00 (74H01 differs again — see
datasheet). The RTL exposes the same `a`/`b`/`y` vectors.

## Testbench

Exhaustive 256-vector walk.
