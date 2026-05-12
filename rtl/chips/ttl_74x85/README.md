# ttl_74x85 — 4-bit magnitude comparator

Compares 4-bit operands `a` and `b` and asserts one of `a_gt_b`, `a_eq_b`,
`a_lt_b`. Three cascade inputs allow stacking comparators for wider words.

When using a single 4-bit comparator, tie `i_a_eq_b=1` and the other two
cascade inputs to 0.

256-vector exhaustive testbench (all `a`/`b` pairs, with cascade inputs
set for standalone operation).
