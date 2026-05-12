# ttl_74x244 — Octal buffer / line driver, 3-state, non-inverting

Two independent 4-bit buffer banks with separate active-low output
enables. When the enable for a bank is high, that bank's outputs are
driven to 0 (project convention for representing high-Z in FPGA-internal
logic; see `docs/unsupported_physical_behavior.md`). When the enable is
low, the outputs pass through their data inputs.

| Signal   | Width | Dir | Description                       |
| -------- | ----- | --- | --------------------------------- |
| `a`      | [7:0] | in  | Data input                        |
| `oe1_n`  | 1     | in  | Bank-1 output enable (drives `y[3:0]`) |
| `oe2_n`  | 1     | in  | Bank-2 output enable (drives `y[7:4]`) |
| `y`      | [7:0] | out | Data output (zero when disabled)  |

To use this module as an actual tri-state I/O pad at the top of a design,
wrap it with the FPGA's pad primitive driving an `inout` from `y` (when
`oe_n` is low) or high-Z (when `oe_n` is high).
