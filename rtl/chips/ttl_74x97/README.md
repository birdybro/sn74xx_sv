# ttl_74x97 — Synchronous 6-bit binary rate multiplier

Outputs an average pulse rate equal to `rate / 64` times the input clock
rate (where `rate` is a 6-bit value). Useful for fractional clock
division.

This RTL is a behavioral BRM: a 6-bit free-running counter combined with
a per-rate-bit pattern decode that selects which counter values produce
output pulses. The average rate is correct for every `rate` value, though
the exact pulse pattern may differ from the original chip's master-slave
implementation.
