# ttl_74x49 — BCD to 7-segment decoder/driver, OC, active-high

Simpler 7-segment decoder than 74x47/48 — only a single blanking input
(`bi_n`, active low), no lamp test, no ripple blanking.

Segment decode matches the standard 7447/7448 table. Outputs are
active-HIGH; OC drive characteristics not modeled.
