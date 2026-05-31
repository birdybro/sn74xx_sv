# ttl_74x866 — 8-bit magnitude comparator with input/output latches

8-bit magnitude comparator (relative of the [`ttl_74x885`](../ttl_74x885/README.md))
with transparent latches on both operands and on the outputs, a clearable Q
register, three decoded outputs, and cascade inputs. Datasheet: TI
**SN54AS866/SN74AS866** (D2661).

## Function

- `l_a_n`: **high** = Logical (unsigned) compare, **low** = Arithmetic
  (two's-complement / signed).
- `ple` / `qle`: P / Q input latch enables — transparent when high, hold when
  low.
- `clr_q_n`: asynchronous clear of the Q latch (active low) — forces latched Q
  to 0 (fast "P vs zero"); dominates `qle`.
- `ole`: output latch enable — transparent when high, hold when low.
- Cascade (expandable to longer words): when this stage is equal, the cascade
  inputs propagate to the magnitude outputs:
  ```
  p_gt_qout = gt | (eq & p_gt_qin)
  p_lt_qout = lt | (eq & p_lt_qin)
  p_eq_qout = eq
  ```
  All three outputs pass through the output latch.

## Pin mapping (28-pin)

QLE=1, L/A=2, P<Qin=3, P>Qin=4, Q7..Q0=5..12, P=Qout=13, GND=14, OLE=15,
P>Qout=16, P<Qout=17, P0..P7=18..25, PLE=26, /CLRQ=27, Vcc=28.

## Unsupported physical behavior

The **P=Q output is open-collector** on the real device (so cascaded stages'
P=Q outputs wire-AND into a word-level equality). The wired-AND is not modeled —
the logic level is driven directly. Three latch enables are level-sensitive
(`always_latch`), matching the chip.

## Verification

Reference-model testbench mirroring the three latches, Q-clear, signed/unsigned
compare, and cascade: directed checks for latch transparency/hold, Q-clear,
both compare modes, and cascade-on-equal, plus 3000 random steps. Verilator
`--lint-only -Wall` clean.
