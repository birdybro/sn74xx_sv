# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

A library of 7400-series integrated circuits reimplemented in synthesizable SystemVerilog. Each module should faithfully model the logical behavior of its TI SN74xx counterpart and be synthesizable for FPGA/ASIC targets (not just simulation-only).

## Status

The repository currently contains only the README and LICENSE — no source, testbenches, or build tooling yet. When adding the first module, also establish:

- A directory convention for RTL vs. testbench files (e.g., `rtl/` and `tb/`, or co-located `sn74xx.sv` / `sn74xx_tb.sv`).
- A simulator entry point. The target audience is hobbyist/educational FPGA work, so a free toolchain (Icarus Verilog + cocotb, or Verilator) is the natural default — confirm with the user before committing to one.
- A naming convention for the modules. The TI part numbers (`sn7400`, `sn7474`, etc.) are the obvious choice; pin names should match the datasheet so users can cross-reference.

Until that scaffolding exists, ask before introducing a build system, test framework, or directory layout — these choices will be load-bearing for every later module.

## Authoring guidance for 74xx modules

- Prefer behavioral RTL that mirrors the datasheet's functional description, not gate-level netlists — the point is a *synthesizable* reimplementation, not a transistor-accurate one. Propagation delays, drive strengths, and metastability are out of scope unless the user says otherwise.
- Active-low signals in the datasheets (e.g., `/CLR`, `/PRE`, `/OE`) should be represented explicitly in port names (e.g., `clr_n`, `oe_n`) so polarity is unambiguous at instantiation.
- Tri-state outputs (`'138`, `'244`, `'245`, etc.) should use SystemVerilog's `'z` on a `logic` output — fine for synthesis on FPGA I/O pads, but flag to the user if a part is being used internally where tri-state won't synthesize.
