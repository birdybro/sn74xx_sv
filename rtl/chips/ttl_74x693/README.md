# ttl_74x693 — 4-bit binary counter with output register and multiplexed 3-state outputs, synchronous clear

4-bit binary synchronous counter with a snapshot register and multiplexed
3-state outputs. Datasheet: TI **SN54LS690-693** (D2423).

## Function

- **Counter** (clock `cck`): synchronous clear via `cclr_n`; synchronous parallel
  load from `d` when `load_n` low; counts up when `enp & ent`; binary count
  wraps `15 -> 0`. `rco = ent & (count == 15)` for cascading.
- **Register** (clock `rck`): captures the counter value on the rising edge;
  asynchronous clear via `rclr_n`.
- **Output**: `r_c` selects counter (0) or register (1); `g_n` (active low)
  enables the 3-state outputs (high-Z modeled as driven 0).

`d`/`q` are vectors with bit 0 = A/QA (LSB).

## Pin mapping (20-pin)

`cclr_n`=1, `cck`=2, A–D=3–6, `enp`=7, `rclr_n`=8, `rck`=9, GND=10,
`R/C`=11, `/G`=12, `/LOAD`=13, `ent`=14, QD–QA=15–18, `rco`=19, Vcc=20.

## Verification

Reference-model testbench: a behavioral model mirrors the semantics; directed
checks cover load, the binary wrap and `rco`, hold, register capture/hold,
`R/C` select, `/G`, both clears (including clear asserted between clock edges to
exercise the sync counter-clear), plus 1500 randomized steps. Verilator
`--lint-only -Wall` clean.
