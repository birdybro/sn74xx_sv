# ttl_74x2226 — dual 64-bit FIFO memories (64x1)

Bidirectional FIFO: two independent 64-deep x 1-bit queues
(A→B and B→A) sharing a common reset.  Same structure as
[ttl_74x2235](../ttl_74x2235/README.md).

Modeling note: this is a **dual** FIFO — two independent queues. They are
generated with the bidirectional template, so the two queues are named `*_ab`
and `*_ba`; treat them as FIFO&nbsp;1 and FIFO&nbsp;2 (independent, not
necessarily opposite-direction). Async timing of the original is not preserved.
