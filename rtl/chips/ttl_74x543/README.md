# ttl_74x543 — octal registered transceiver, non-inverting

Separate A->B and B->A paths, each with its own latch enable, output enable,
and chip enable. Bidirectional pad behavior is modeled with split
`a_in/a_out`, `b_in/b_out` ports plus `a_hiz`/`b_hiz` indicators.
