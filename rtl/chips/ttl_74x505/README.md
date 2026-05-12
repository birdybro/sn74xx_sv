# ttl_74x505 — 8-bit SAR ADC (digital-only approximation)

The real 74x505 is a successive-approximation ADC: SAR logic + DAC + analog
comparator. This model skips the analog path and assumes the comparator
input `analog_code` is the already-quantized 8-bit value; the SAR state
machine produces the same result `q` after 8 cycles. See
`docs/unsupported_physical_behavior.md`.
