# ttl_74x75 — 4-bit bistable latch, complementary outputs

Four D latches in two groups of two. Latches 0-1 share `le[0]`; latches
2-3 share `le[1]`. Both Q and Q-bar outputs available.

When the group's LE is high, the latches are transparent. When low, they
hold the last sampled value.
