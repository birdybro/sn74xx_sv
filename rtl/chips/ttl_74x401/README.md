# ttl_74x401 — CRC generator/checker

CRC-16 LFSR. `POLY` defaults to CRC-16-IBM (0x8005). Shifts in `din` and
updates the 16-bit CRC register each posedge clock.
