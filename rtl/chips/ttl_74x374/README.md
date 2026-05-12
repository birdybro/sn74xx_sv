# ttl_74x374 — Octal D-type flip-flop with 3-state outputs

Eight posedge-triggered D flip-flops in one chip. Common clock and common
output enable. No reset or clear input (that's the 74x273).

| Signal | Width | Dir | Description                           |
| ------ | ----- | --- | ------------------------------------- |
| `clk`  | 1     | in  | Positive-edge clock                   |
| `oe_n` | 1     | in  | Output enable, active low             |
| `d`    | [7:0] | in  | Data input                            |
| `q`    | [7:0] | out | Registered output (0 when `oe_n=1`)   |

Same FPGA-internal high-Z convention as the rest of the bus parts: when
`oe_n=1`, outputs read as 0 in the fabric. Wrap with an FPGA tri-state
pad primitive for a real bidirectional pin.
