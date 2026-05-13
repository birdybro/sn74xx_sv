# ttl_74x885 — 8-bit magnitude comparator (unsigned/two's complement, P latch, cascade)

Per SN74AS885 (SDAS236A). Selects between unsigned ("Logical") and
signed-two's-complement ("Arithmetic") comparison via `l_a_n` (high =
logical). The P operand passes through a transparent latch controlled by
`ple` (high = transparent, low = held).

When the latched P equals Q the cascade inputs `p_gt_qin` and `p_lt_qin`
pass through to the cascade outputs unchanged — letting multiple '885s
chain to compare wider words. When P ≠ Q the cascade outputs reflect the
selected comparison directly.

The "power-up clear" feature on the P latch (which puts the P data in a
known state at power-on) is not modeled.
