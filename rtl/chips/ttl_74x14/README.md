# ttl_74x14 — Hex Schmitt-trigger inverter

Same digital function as `ttl_74x04`. Schmitt-trigger input hysteresis is
analog and not modeled — use a digital debouncer if you need it.

Often used with an external R-C network as a relaxation oscillator. The RTL
does not oscillate.

Datasheet: [SN74LS14](https://www.ti.com/lit/gpn/sn74ls14).
