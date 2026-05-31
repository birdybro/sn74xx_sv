# ttl_74x672 — 4-bit universal shift register/latch, 3-state outputs

A 4-bit universal shift register (like '194A) plus a 4-bit storage register
(like '175) multiplexed to a 3-state output stage (like '258), with a cascade
output. Datasheet: TI **SN54LS671/672** (D2638).

## Function

- **Shift register** (posedge `srck`), synchronous clear via `srclr_n`; mode
  `{s1,s0}`: `00` hold, `01` shift right (QA→QD, `ser_r` in), `10` shift left
  (QD→QA, `ser_l` in), `11` parallel load from `d`.
- **Storage register** (posedge `rck`): captures the shift-register outputs.
- **Output**: `r_s` selects storage (1) or shift register (0); `g_n` (active
  low) enables the 3-state outputs (high-Z modeled as 0).
- **`casc`**: cascade output, always driven (even when `q` is high-Z) — presents
  QA in shift-left mode, QD otherwise.

`d`/`q` bit 0 = A / QA (LSB).

## Pin mapping (20-pin)

SER R=1, SRCK=2, A=3, B=4, C=5, D=6, SER L=7, `/SRCLR`=8, RCK=9, GND=10,
R/S=11, `/G`=12, S1=13, S0=14, QD=15, QC=16, QB=17, QA=18, CASC=19, Vcc=20.

## Verification

Reference-model testbench (event-driven mirror of both clock domains): directed
checks for clear, load, shift right/left with cascade, storage capture, the R/S
mux, and `/G`, plus 1500 random steps. Verilator `--lint-only -Wall` clean.
