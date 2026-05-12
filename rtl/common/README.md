# rtl/common

Shared SystemVerilog definitions used by multiple chips in the library.

- **`ttl_pkg.sv`** — `package ttl_pkg` containing helpers that would otherwise
  be duplicated across chips:
  - `xor_reduce_func` — parity over an arbitrary-width vector (used by 74x180,
    74x280, 74x286, and similar).
  - `bcd_to_7seg` — BCD-to-seven-segment decode in the canonical
    `{a, b, c, d, e, f, g}` layout with active-high segment polarity. The
    74x47 (open-collector, active-low) is the inverted form; chips that need
    the 6-segment "extra patterns" for 0xA–0xF override the default `case`.

Chips that use the package include `\`include "rtl/common/ttl_pkg.sv"\`` (or, more
commonly, are compiled with `ttl_pkg.sv` listed before them on the Verilator
command line). The run scripts handle this automatically.

This package is **kept deliberately small.** Most 7400 chips are best
implemented as ~10 lines of straight-line RTL with no shared dependencies.
Pulling them through a package adds compile-order pain without saving
keystrokes.
