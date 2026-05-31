# ttl_74x1604 — dual 8-bit transparent latch with output multiplexer

Stores 16-bit-wide data (an 8-bit A latch and an 8-bit B latch); the latch
outputs feed eight 2-input multiplexers to give 8 outputs. Datasheet: Philips
**74F1604** (1990).

## Function

Both latches share one active-low latch enable `le_n`:

```
le_n = 0 : transparent (a_lat <= a, b_lat <= b)
le_n = 1 : latched (hold the value present before the L->H transition)
q        = sel_ab ? a_lat : b_lat          // SELECT A/B-bar: 1=A, 0=B
```

The mux selects between the **latched** A and B words, so toggling `sel_ab`
while latched switches the output between the two held words (per the datasheet
Function Table note). No output enable / three-state.

## Pin mapping (28-pin)

`/LE`=1, SELECT A/B=2, A0=3, B0=4, A1=5, B1=6, A2=7, B2=8, A3=9, B3=10, Q3=11,
Q2=12, Q1=13, GND=14, Q0=15, Q4=16, Q5=17, Q6=18, Q7=19, B7=20, A7=21, B6=22,
A6=23, B5=24, A5=25, B4=26, A4=27, Vcc=28.

## Verification

Reference-model testbench (mirrors both latches): directed checks for
transparent A/B selection, hold across input changes, select-toggle while
latched, and recapture, plus 3000 random steps. Verilator `--lint-only -Wall`
clean.
