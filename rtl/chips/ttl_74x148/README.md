# ttl_74x148 — 8-to-3 priority encoder

Active-low inputs `i_n[7:0]` (highest-numbered active input wins). Active-low
encoded output `y_n[2:0]`. Enable input `ei_n`. Cascade outputs:

- `gs_n` (group select): low when any input is active and the chip is enabled
- `eo_n` (enable output): low when *no* input is active and the chip is enabled

Used as the core of priority arbitration and to chain multiple encoders into
wider priority logic.
