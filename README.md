# sn74xx_sv

Synthesizable, FPGA-friendly SystemVerilog reimplementations of the 7400-series of
integrated circuits. One module per part number (or per shared implementation when
the parts are aliases), with a self-checking testbench for each.

The canonical task list is generated from a machine-readable database:

- `build/chips.json` — source of truth, one entry per chip
- `tasks.md` — human-readable checklist regenerated from `build/chips.json`
- `rtl/chips/<module_name>/<module_name>.sv` — the RTL
- `tb/chips/<module_name>/tb_<module_name>.sv` — the testbench
- `rtl/chips/<module_name>/README.md` — per-chip notes, behavioral assumptions, datasheet reference

## What "FPGA synthesizable" means here

Every RTL module compiles cleanly to FPGA logic resources. That means:

- No delays (`#5`), no `force`/`release`, no `real`, no `wait`.
- No `initial` blocks in RTL except for synthesizable on-chip memory initialization.
- No internal tri-state buses — output-enable behavior is modeled with muxed logic
  (e.g., output zero, or a selectable default) and an `oe_n` port. Top-level
  `inout` is only used when a module specifically models a chip pin interface and
  the target FPGA supports tri-state I/O pads.
- No latches unless the chip is actually a latch.
- Active-low pins are named with the `_n` suffix (`oe_n`, `clr_n`, `pre_n`, etc.)
  and the corresponding signal is asserted on a logic-zero level.

See [`docs/conventions.md`](docs/conventions.md) for the full RTL/testbench style.

## What is intentionally not modeled

The library is digital-only. Analog and electrical-only characteristics of the
original parts are not represented in RTL. That includes:

- Output drive strength, propagation delay, fanout limits
- Open-collector / open-drain physical wired-AND behavior
- Schmitt-trigger input hysteresis
- Pull-up / pull-down resistor behavior
- Bus-hold input keepers
- Voltage-level translation (the digital logic passes through; voltage is FPGA-pad business)
- High-voltage / high-current / relay-driver / lamp-driver output stages
- Crystal-oscillator analog drive, RC oscillators, monostable timing
- Analog switches, ADCs, delay lines

For each chip with such a feature, the chip's `README.md` lists the unsupported
behaviors, and `docs/unsupported_physical_behavior.md` explains the project-wide
policy on how each class is represented (or not) digitally.

## How to run tests

The simulation flow uses [Verilator](https://verilator.org/). On Windows the
recommended path is WSL — invoke the scripts from a WSL shell.

```sh
# Run a single chip's testbench (by module name):
./scripts/run_one.sh ttl_74x00

# Run every testbench that exists:
./scripts/run_all.sh
```

A passing testbench prints `PASS: <module>` on its final line and exits 0.
A failing testbench calls `$fatal` and exits non-zero.

## How to run synthesis checks

The repository targets clean synthesis with Yosys when available. The CI-friendly
substitute that we exercise locally is `verilator --lint-only` with `-Wall`, which
catches the same class of non-synthesizable / sloppy-RTL issues that Yosys would.
If Yosys is on the path, `scripts/run_one.sh` will additionally invoke it for a
`read_verilog -sv` + `synth -top` smoke check.

## How to read tasks.md

`tasks.md` is **generated** from `build/chips.json`. Do not edit chip task
entries by hand — update `build/chips.json` and run:

```sh
python3 scripts/update_tasks.py
```

Status legend:

- `[ ]` not started
- `[~]` in progress
- `[x]` complete (RTL + testbench + simulation pass + documentation)
- `[!]` blocked, or digital-only approximation with documented caveats

The chip list is extracted from Wikipedia. To regenerate from upstream:

```sh
python3 scripts/extract_wikipedia_7400.py
python3 scripts/update_tasks.py
```

See [`docs/source_extraction.md`](docs/source_extraction.md) for details.

## Repository layout

```
.
├── README.md
├── tasks.md                          generated from build/chips.json
├── LICENSE                           MIT
├── build/
│   └── chips.json                    source of truth (one entry per chip)
├── docs/
│   ├── conventions.md
│   ├── unsupported_physical_behavior.md
│   ├── source_extraction.md
│   └── datasheet_sourcing.md
├── scripts/
│   ├── extract_wikipedia_7400.py
│   ├── update_tasks.py
│   ├── run_one.sh
│   └── run_all.sh
├── rtl/
│   ├── common/
│   │   ├── ttl_pkg.sv
│   │   └── README.md
│   └── chips/
│       └── ttl_74x00/
│           ├── ttl_74x00.sv
│           └── README.md
├── tb/
│   └── chips/
│       └── ttl_74x00/
│           └── tb_ttl_74x00.sv
└── sim/
    └── README.md
```

## License

[MIT](LICENSE).
