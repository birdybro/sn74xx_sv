# ttl_74x915 — 7-segment to BCD converter

Converts seven-segment information (segments a–g) to a 4-bit BCD value, with an
on-chip output latch, three-state BCD outputs, and Error/Minus flags. Datasheet:
National **MM54C915/MM74C915**.

## Function

- `invert`: Invert/Non-invert control. `0` = active-high decoding (segment lit
  at logic 1); `1` = active-low decoding (lit at 0; segments complemented).
- The "true" segment pattern is matched against the standard digit font. A
  match yields the BCD digit (0–9).
- `error`: `1` when the pattern is not a standard 0–9 code.
- `minus`: `1` for the "minus" code (segment g only).
- `le`: output latch — `0` = flow-through (transparent), `1` = hold.
- `oe_n`: output enable (active low). High three-states the BCD outputs; the
  outputs are **also** three-stated whenever `error = 1`. High-Z is modeled as 0.

The datasheet specifies "standard 7-segment code" decoding without an explicit
pattern table, so this model decodes against the library-canonical font
(`ttl_pkg::bcd_to_7seg`) — making `ttl_74x915` the exact inverse of the
[`ttl_74x47`](../ttl_74x47/README.md)/`'48` encoders.

## Pin mapping (18-pin)

d=1, c=2, b=3, a=4, ERROR=5, `/OE`=6, A(2⁰)=7, B(2¹)=8, GND=9, C(2²)=10,
D(2³)=11, LE=12, MINUS=13, INVERT=14, e=15, f=16, g=17, Vcc=18.

## Unsupported physical behavior

True three-state high-Z (modeled as driven 0); MOS-to-TTL level translation.

## Verification

Exhaustive over all 128 segment patterns in both invert modes (256 cases),
checking BCD/error/minus against the reference font, plus directed latch and
three-state checks and 2000 random steps. Verilator `--lint-only -Wall` clean.
