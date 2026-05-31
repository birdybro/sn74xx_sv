# ttl_74x674 — 16-bit parallel-in, serial-out shift register

A 16-bit shift register with parallel load and a three-state serial I/O port
`SER/Q15`. Datasheet: TI **SN54LS673/674, SN74LS673/674** (SDLS195).

## Function

Four modes, all clocked on the **falling** edge of `clk`, enabled by active-low
`cs_n`:

| CS | R/W | MODE | CLK | Operation | SER/Q15 |
|----|-----|------|-----|-----------|---------|
| H  | X   | X    | X   | do nothing | Z |
| L  | L   | X    | ↓   | shift and write (serial load via `si`) | Z (input) |
| L  | H   | L    | ↓   | shift and read (recirculating) | Q15 |
| L  | H   | H    | ↓   | parallel load from `p` | P15 |

```
write:  sr <= {sr[14:0], si}       (serial in at LSB, MSB shifts out)
read:   sr <= {sr[14:0], sr[15]}   (recirculate; non-destructive)
load:   sr <= p
q15   = (!cs_n && rw) ? sr[15] : 0
```

The single bidirectional `SER/Q15` pin is split per library convention: `si`
(serial input, write mode) and `q15` (serial output = register MSB, driven only
when `cs_n=0 && rw=1`, else high-Z modeled as 0).

## Pin mapping (24-pin)

CS=1, CLK=2, R/W=3, NC=4, MODE=5, SER/Q15=6, P0=7…P4=11, GND=12, P5=13…P15=23,
Vcc=24.

## Verification

Reference-model testbench: parallel-load + serial read-out of a known word
(recirculating, register restored), serial write-in then read-back, chip-select
hold, and 1500 random steps. Verilator `--lint-only -Wall` clean.

## Related

The [`ttl_74x673`](../ttl_74x673/README.md) is the companion serial-in part with
an added 16-bit parallel-out storage register.
