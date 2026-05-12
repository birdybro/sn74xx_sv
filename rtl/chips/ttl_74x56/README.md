# ttl_74x56 — 50:1 frequency divider

Counter divides input clock by 50. Output `q` has 50% duty cycle.
Async active-low clear resets the counter and output to 0.

Note: the original part numbers in this slot vary across vendors; this RTL
implements the divide-by-50 function in a synthesis-friendly form
(synchronous counter with output toggle).
