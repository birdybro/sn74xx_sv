# ttl_74x624 — voltage-controlled oscillator (digital approximation)

The real 74624 is an analog VCO whose output frequency depends on an external
RC network and a control voltage. This digital model substitutes an 8-bit
`period_code` input for the analog control. See
`docs/unsupported_physical_behavior.md`.
