# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

A library of 7400-series integrated circuits reimplemented in synthesizable SystemVerilog. Each module faithfully models the logical behavior of its TI SN74xx counterpart and is synthesizable for FPGA/ASIC targets (not simulation-only). Analog/electrical behavior (drive strength, delay, open-collector wired-AND, Schmitt hysteresis, voltage translation, oscillator/monostable timing) is intentionally **not** modeled — see `docs/unsupported_physical_behavior.md`.

The library is large and mostly built out: `build/chips.json` tracks 1,555 chips. Most common work is implementing the remaining chips or fixing existing ones, one part at a time.

## Source of truth and the chip triad

`build/chips.json` is the **source of truth** — one entry per chip (`part_number`, `normalized_module_name`, `implementation_status`, `implementation_notes`, paths, datasheet, etc.). `tasks.md` is **generated** from it and must never be hand-edited.

Each implemented chip is a triad of files keyed by its module name (`ttl_<normalized_part>`, e.g. `ttl_74x00`):

- `rtl/chips/<module>/<module>.sv` — the RTL, `module <module> (...)`
- `tb/chips/<module>/tb_<module>.sv` — self-checking testbench, `module tb_<module>;`
- `rtl/chips/<module>/README.md` — datasheet reference, behavioral assumptions, unsupported-behavior notes

Shared helpers (currently just BCD-to-seven-segment) live in `rtl/common/ttl_pkg.sv`; chips that need them `import ttl_pkg::*` and `run_one.sh` pulls the package in automatically when it sees that import.

## Common commands

```sh
# Lint + simulate + (if yosys present) synth-check one chip:
./scripts/run_one.sh ttl_74x00

# Run every chip testbench that has both RTL and a tb:
./scripts/run_all.sh

# Mark a chip's status and append a note, regenerating tasks.md in one step:
python3 scripts/mark_chip.py 74x00 complete --note "Exhaustive 256-vector tb passes; Yosys synth OK"
# status ∈ not_started | in_progress | complete | blocked | digital_only_approximation

# Regenerate tasks.md from chips.json (mark_chip.py does this for you):
python3 scripts/update_tasks.py
```

`run_one.sh` exit codes are meaningful: 2 = lint fail, 3 = build fail, 4 = testbench fail / no PASS line, 5 = yosys fail. A passing testbench prints `PASS: %m` as its **last line**; `run_all.sh` greps for `^PASS: `. On any mismatch a testbench calls `$fatal(1, ...)`.

Lint is the synth-substitute and is strict: `verilator --lint-only -Wall` with only `-Wno-DECLFILENAME -Wno-UNUSEDSIGNAL -Wno-TIMESCALEMOD -Wno-MULTIDRIVEN` suppressed. RTL must lint with zero other warnings.

### Code generators

Families of structurally identical parts are generated rather than hand-written. Each emits the full triad (RTL + tb + README):

- `scripts/gen_simple_gate.py <part> <units> <fn> "<desc>"` — basic gates (nand/nor/and/or/xor/inv …)
- `scripts/gen_xceiver.py <part> <width> "<desc>"` — 74x245-style bus transceivers
- `scripts/gen_fifo.py <part> <depth> <width> [--bidir] --description "..."` — synchronous FIFOs
- `scripts/gen_ram.py <part> <words> <bits> --description "..."` — RAMs

## Status legend (tasks.md / chips.json)

- `complete` (`[x]`) — RTL + tb + sim pass + README
- `blocked` (`[!]`) — cannot be faithfully modeled (analog/electrical-only parts: oscillators, analog switches, delay lines, lamp/relay drivers, ADCs). This is a large, legitimate category (~420 chips), not a TODO.
- `digital_only_approximation` (`[!]`) — implemented digitally with documented caveats (e.g. open-collector parts modeled as plain logic)
- `in_progress` (`[~]`), `not_started` (`[ ]`)

## Authoring guidance for 74xx modules

See `docs/conventions.md` for the full, authoritative style. Load-bearing rules:

- Behavioral RTL mirroring the datasheet's functional description — not gate-level netlists. The point is a *synthesizable* reimplementation, not a transistor-accurate one.
- All ports `input logic`/`output logic` — no `wire`, no `reg`. Vectors `[N-1:0]`.
- **Active-low** pins carry the `_n` suffix (`oe_n`, `clr_n`, `pre_n`, `g2a_n`) and assert on logic 0. Datasheet overbars map to `_n`.
- **No internal tri-state.** Output-enable is modeled as muxed logic (drive value or drive `'0`) plus an `oe_n` port; the chip README states this. Top-level `inout`/`'z` is only acceptable when a module genuinely models a chip pin on a tri-state-capable FPGA pad — no current chip does this.
- No `#delay`, `wait`, `force`/`release`, `real`, `event`, runtime `$random`. No `initial` blocks except documented synthesizable memory init (`$readmemh`/`$readmemb`). No latches unless the chip is actually a latch (`always_latch`).
- Async clear/preset → async reset in the sensitivity list; edge-triggered → posedge `always_ff` (falling-edge parts use an internally inverted clock, noted in the README).
- Testbenches: exhaustive for input spaces ≤ 2^14; otherwise boundary values + 100+ fixed-seed random vectors + every datasheet truth-table row as a directed test. Sequential parts must cover reset/clear/preset/load/count/hold/enable/carry/direction and both polarities of active-low pins.

For each chip with an unmodeled feature, list it in the chip's README and follow the project-wide policy in `docs/unsupported_physical_behavior.md`.

## Per-chip workflow

Implement → `run_one.sh <module>` until lint + sim (+ yosys) pass → `mark_chip.py <part> complete --note "..."` → commit. When the user says "keep going," cycle implement→test→mark→commit→push per chip without per-chip approval (see auto-memory `feedback_batch_autonomous_chip_loop`).
