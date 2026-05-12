# sim

Simulation outputs and per-run build artifacts land here when tests are run.
This directory is git-ignored except for this README.

The simulation flow uses [Verilator](https://verilator.org/). On Windows the
recommended path is WSL — invoke the scripts from a WSL shell so `verilator`
is on `PATH`.

## Running

```sh
# Run a single testbench by module name:
./scripts/run_one.sh ttl_74x00

# Run every existing testbench:
./scripts/run_all.sh
```

A passing testbench prints `PASS: <module>` and exits 0. A failure calls
`$fatal` and exits non-zero. `scripts/run_all.sh` collects per-chip results
and prints a final summary; it exits non-zero if any chip fails.

## What the scripts do per chip

1. `verilator --lint-only -Wall -Wno-DECLFILENAME <rtl> <tb>`
   - Catches non-synthesizable RTL, latch inference, unused signals, width
     mismatches. This is the cheap synth-lint substitute.
2. `verilator --binary --trace -Wno-DECLFILENAME <rtl> <tb> -o tb`
   then `./obj_dir/tb` to run the testbench.
3. If `yosys` is on `PATH`:
   `yosys -p "read_verilog -sv <rtl>; synth -top <module>; stat"`
   for a synthesis smoke check.

## Why not Icarus?

Icarus Verilog's SystemVerilog support lags behind Verilator's for the
constructs this library uses (`always_ff`, `always_comb`, `logic` typing,
packed arrays, parameterized memories). Verilator is the primary supported
simulator.
