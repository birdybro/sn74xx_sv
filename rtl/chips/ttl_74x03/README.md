# ttl_74x03 — Quad 2-input NAND, open-collector

| Field         | Value                                              |
| ------------- | -------------------------------------------------- |
| Original part | 74x03                                              |
| Function      | Quad 2-input NAND, open-collector outputs          |
| Datasheet     | [SN74LS03](https://www.ti.com/lit/gpn/sn54ls03)    |

Same digital function as `ttl_74x00`. Open-collector physical behavior is not
modeled — see `docs/unsupported_physical_behavior.md`.

Pinout: 74x03 has the canonical 74x00-style pinout (inputs first, output
third) — distinct from 74x01 which has a less common layout.

## Testbench

Exhaustive 256-vector walk.
