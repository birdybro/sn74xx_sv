# ttl_74x06 — Hex inverter buffer/driver, OC 30V/40mA

Same digital function as `ttl_74x04`. Output stage is open-collector with
30 V breakdown / 40 mA sink current — used in datasheet-recommended designs
for relay/lamp drivers. None of that is modeled. RTL is `y = ~a`.

Datasheet: [SN74LS06](https://www.ti.com/lit/gpn/sn74ls06).
