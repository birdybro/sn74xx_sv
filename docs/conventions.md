# Conventions

These conventions apply to every chip in the library. They exist to make the RTL
predictable for synthesis tools and to make the testbenches uniform enough to be
run by a single script.

## Module and file naming

- Module names are lowercase and prefixed with `ttl_`, then the normalized part
  number. Examples:

  | Part number     | Module name           |
  | --------------- | --------------------- |
  | `74x00`         | `ttl_74x00`           |
  | `7451`          | `ttl_7451`            |
  | `74H51`         | `ttl_74h51`           |
  | `74x1G00`       | `ttl_74x1g00`         |
  | `74x162373`     | `ttl_74x162373`       |

  Family-letter rules:
  - The generic stand-in `x` (as in `74x00`, meaning "any subfamily — LS, HC, AHC,
    F, AS, ALS, …") is preserved verbatim.
  - Specific family letters that the Wikipedia table calls out as a distinct row
    (`74H51`, `74S00` if present as separate rows, etc.) are lowercased and kept.

- The file name must match the module name exactly:
  `rtl/chips/ttl_74x00/ttl_74x00.sv` declares `module ttl_74x00 (...)`.

- Testbench file names start with `tb_`:
  `tb/chips/ttl_74x00/tb_ttl_74x00.sv` declares `module tb_ttl_74x00;`.

- Aliases (e.g., 74x37 is "quad 2-input NAND buffer" and shares the truth table
  of 74x00 from a logic standpoint but has higher drive — *if* the project
  decides to share an implementation, the alias is listed in the chip's
  `README.md` and in the `aliases` field of `build/chips.json`. Each alias still
  gets its own module file that may simply instantiate the shared one, so the
  module name and part number remain one-to-one.

## Port naming

- All ports are typed `input logic …` or `output logic …`. No `wire`, no `reg`.
- Vectors use `[N-1:0]` ordering.
- **Active-low** pins are named with the `_n` suffix. Examples:
  - `oe_n` — output enable, asserted low
  - `clr_n` — asynchronous clear, asserted low
  - `pre_n` — asynchronous preset, asserted low
  - `g_n`, `g1_n`, `g2a_n`, `g2b_n` — chip-select / enable inputs, asserted low
- Datasheet pin labels with overbars (e.g., $\overline{CLR}$) map to `clr_n`.
- Names follow the datasheet where possible. Where the datasheet uses cryptic
  letters (`G`, `Y`, `A`, `B`), the RTL keeps them — the chip README explains
  what each pin does.

## Reset, clock, and clear

- Clocks are named `clk` (or `clka`, `clkb` for dual-port memories / dual flops).
- Edge-triggered flops use posedge-clock `always_ff`. Datasheet falling-edge
  parts (e.g., 74x107 master-slave) are still implemented as posedge-on-an
  internally-inverted clock — see the chip README for the rationale.
- Asynchronous clear / preset (the standard 7474, 74107, 74109, etc. behavior)
  is implemented as an asynchronous reset in the sensitivity list:

  ```systemverilog
  always_ff @(posedge clk or negedge clr_n or negedge pre_n) begin
      if (!clr_n)      q <= 1'b0;
      else if (!pre_n) q <= 1'b1;
      else             q <= d;
  end
  ```

- Synchronous-load counters (e.g., 74x161 vs. 74x163) follow the datasheet
  exactly. The chip README states whether load and clear are synchronous or
  asynchronous.

## Output enable, three-state, and open-collector

- Chips with three-state outputs (e.g., 74x240, 74x244, 74x245) have an `oe_n`
  port. Internally the module computes the data value and either drives it or
  drives `'0` based on `oe_n`. The default representation of "high-Z output"
  for an FPGA-internal signal is the muxed-zero form — the chip README states
  this explicitly.

- Chips with open-collector / open-drain outputs (e.g., 74x05, 74x07, 74x03)
  are implemented as their logic function with a documented note that the
  physical wired-AND behavior is *not* modeled. If a user wants wired-AND,
  they synthesize the AND of the OC signals externally.

- Top-level `inout`/`tri` is not introduced unless the module specifically
  models a chip pin (e.g., bus transceivers in a top-level FPGA pin role) and
  the synthesis target supports it. None of the chips in this library
  currently take this approach; all bus parts are implemented with separate
  `a_in`/`a_out`/`a_oe_n` style splits, documented in the chip README.

## Combinational vs. sequential RTL

- Pure combinational gates (NAND, NOR, AND, OR, XOR, XNOR, AOI, OAI, decoders,
  encoders, muxes, demuxes, comparators, parity, adders): use `assign` or
  `always_comb`. Use `assign` when the expression fits on one line.
- Latches use `always_latch` and only when the chip is actually a latch
  (74x75, 74x373, etc.).
- Flip-flops, counters, shift registers, registers, FIFOs, register files:
  `always_ff`.
- Memories: behavioral arrays inferable as block RAM. Initialization, where
  supported, uses `$readmemh` / `$readmemb` against a parameterizable file
  path. The chip README states the supported initialization mechanism.

## What RTL must not contain

- `#delay`, `wait`, `force`/`release`, `disable fork`, `event`, `real`.
- `initial` blocks except for documented FPGA memory initialization
  (`initial $readmemh(...)` or a synthesis-supported initial assignment).
- Non-synthesizable system tasks (`$random` for runtime logic, `$time`-based
  branching, etc.).

These rules are checked locally with `verilator --lint-only -Wall`.

## Testbench conventions

- Filename `tb_<module>.sv` and module name `tb_<module>`.
- Self-checking. On any mismatch:
  ```systemverilog
  $fatal(1, "Mismatch at vector %0d: got %b expected %b", i, got, exp);
  ```
- On success, the **last line** of output is:
  ```systemverilog
  $display("PASS: %m");
  ```
  This is what `scripts/run_all.sh` greps for.
- Combinational chips are tested **exhaustively** for all input patterns when
  the input space is ≤ 2^14. Larger chips use representative coverage:
  - All boundary values (all-zero, all-one, MSB-only, LSB-only).
  - 100+ random vectors with a fixed seed (deterministic).
  - Every datasheet truth-table row reproduced verbatim as a directed test.
- Sequential chips cover: reset/clear, preset, load, count up/down, hold,
  enable, carry/borrow, ripple-out, direction switch, output-enable transitions.
- Active-low pins are tested in both polarities at every relevant transition.

## Synthesis check

- Local: `verilator --lint-only -Wall -Wno-DECLFILENAME <rtl files>` must pass
  with zero warnings. This is the cheap synth-lint substitute.
- Optional: `yosys -p "read_verilog -sv <rtl>; synth -top <module>"` should
  complete without error. `scripts/run_one.sh` invokes Yosys if it is on the
  PATH; otherwise it skips with a notice.
