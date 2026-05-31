# ttl_74x699 — 4-bit binary up/down counter/register/multiplexer, synchronous clear

4-bit binary synchronous **up/down** counter with a snapshot register and
multiplexed 3-state outputs. Datasheet: TI **SN54LS696-699** (D2424). Up/down
version of the [690-693](../ttl_74x690/README.md) family; this part has **no
register-clear pin**.

## Function

- **Counter** (clock `cck`): synchronous clear via `cclr_n`; synchronous parallel
  load from `d` when `load_n` low; counts when `enp & ent` — `u_d`=1 up,
  `u_d`=0 down; binary wrap (up `15 -> 0`, down `0 -> 15`).
  `rco = ent & (terminal count in the active direction)`.
- **Register** (clock `rck`): captures the counter value on the rising edge;
  no clear.
- **Output**: `r_c` selects counter (0) or register (1); `g_n` (active low)
  enables the 3-state outputs (high-Z modeled as driven 0).

`d`/`q` are vectors with bit 0 = A/QA (LSB).

## Pin mapping (20-pin)

`U/D`=1, `cck`=2, A–D=3–6, `enp`=7, `cclr_n`=8, `rck`=9, GND=10, `R/C`=11,
`/G`=12, `/LOAD`=13, `ent`=14, QD–QA=15–18, `rco`=19, Vcc=20.

## Verification

Reference-model testbench: directed checks for up/down counting and both
binary wraps, `rco`, load, hold, register capture/hold, `R/C`, `/G`, and the
sync counter clear, plus 1500 randomized steps. Verilator `--lint-only
-Wall` clean.
