# ttl_74x978 — Octal D-type flip-flop with serial scanner

Behaves as a normal octal D-FF when `test_n = 1` and as an 8-bit scan shift
register when `test_n = 0`. Scan path: `scan_in → q[0] → q[1] → ... → q[7] →
scan_out`. Typical use is board-level boundary-scan testing.
