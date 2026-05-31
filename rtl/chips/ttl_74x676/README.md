# ttl_74x676 — 16-bit serial/parallel-in, serial-out shift register

A 16-bit shift register with parallel load and serial in/out (no parallel
outputs). Datasheet: National **74F676** (FAST databook, 1988).

## Function

Three modes, clocked on the **falling** edge of `cp` while `cs_n=0`:

| CS | M | CP | Mode |
|----|---|----|------|
| H  | X | X  | Hold |
| L  | L | ↓  | Shift / serial load (`si` in at Q0, toward Q15) |
| L  | H | ↓  | Parallel load from `p` (P0..P15) |

```
so = shift-register MSB (Q15)
```

Unlike the TI [`ttl_74x674`](../ttl_74x674/README.md), `si`/`so` are separate
pins (not bidirectional) and the parallel inputs `p` are dedicated; the output
is always driven.

## Verification

Reference-model testbench (event-driven mirror): directed parallel-load + serial
read-out (`0xBEEF`) and serial-write + read-back (`0x1234`), plus chip-select
hold; random phase soaks 1500 steps. Verilator `--lint-only -Wall` clean.
