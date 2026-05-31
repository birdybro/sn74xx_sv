# ttl_74x673 — 16-bit serial-in/-out shift register with 16-bit storage register

A 16-bit shift register plus a 16-bit parallel-out storage register in one
package, connected in a data loop, with a three-state serial port `SER/Q15`.
Datasheet: TI **SN54LS673/674, SN74LS673/674** (SDLS195). Companion to the
[`ttl_74x674`](../ttl_74x674/README.md).

## Function

**Shift register** (falling edge of `sh_clk`, while `cs_n=0`):

| R/W | MODE | operation |
|-----|------|-----------|
| 0   | X    | shift and write (serial in via `si`) |
| 1   | 0    | shift and read (recirculating) |
| 1   | 1    | parallel-load the shift register **from storage** |

**Storage register** (drives outputs `y` = Y0..Y15):
- `strclr_n` low → asynchronous clear (independent of `cs_n`)
- rising edge of `mode_strclk`, with `cs_n=0` and `R/W=0` → load storage **from
  the shift register**

```
q15 = (!cs_n && rw) ? sr[15] : 0     // SER/Q15 output; high-Z modeled 0
```

`mode_strclk` is **dual-purpose**: its level is the shift-register MODE, and a
rising edge clocks the storage register. The two uses are separated by `R/W`
(storage load needs `R/W=0`; shift-register parallel-load needs `R/W=1`), so
they never conflict. `SER/Q15` is split into `si` (in) / `q15` (out).

## Pin mapping (24-pin)

CS=1, SH CLK=2, R/W=3, STRCLR=4, MODE/STRCLK=5, SER/Q15=6, Y0=7…Y4=11, GND=12,
Y5=13…Y15=23, Vcc=24.

## Verification

Directed phase verifies the full data loop against a known word
(serial-write → store → wipe → parallel-load-back → serial read-out = `0xBEEF`),
plus async clear and chip-select hold. Random phase (1500 steps) soaks the
device against an event-driven reference mirroring both clock domains. Verilator
`--lint-only -Wall` clean.
