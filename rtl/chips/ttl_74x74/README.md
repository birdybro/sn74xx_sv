# ttl_74x74 — Dual D positive-edge-triggered flip-flop

DIP-14. Two independent D flip-flops with asynchronous active-low clear
and preset, complementary outputs.

## Ports

| Signal     | Width | Dir | Notes                                              |
| ---------- | ----- | --- | -------------------------------------------------- |
| `clk[1:0]` | 2     | in  | Independent positive-edge clocks                   |
| `d[1:0]`   | 2     | in  | D inputs                                           |
| `clr_n[1:0]` | 2   | in  | Asynchronous clear, active low                     |
| `pre_n[1:0]` | 2   | in  | Asynchronous preset, active low                    |
| `q[1:0]`   | 2     | out | Q outputs                                          |
| `q_n[1:0]` | 2     | out | Q-bar outputs (always `~q` in this RTL)            |

## Truth table

| pre_n | clr_n | clk    | D | Q     |
| ----- | ----- | ------ | - | ----- |
| 0     | x     | x      | x | 1     |
| 1     | 0     | x      | x | 0     |
| 1     | 1     | ↑      | D | D     |
| 1     | 1     | else   | x | hold  |

Asserting both `pre_n=0` and `clr_n=0` simultaneously is illegal on the
real chip — both Q and Q_n go high. This RTL gives priority to `pre_n`
(Q=1) in that case; do not rely on it.

## Testbench

Covers:

- Asynchronous preset and clear on both flops independently.
- Edge capture for D=0 and D=1.
- Hold state on non-clock activity.
- Negative tests (`!pre_n || !clr_n` overrides incoming clock edges).
