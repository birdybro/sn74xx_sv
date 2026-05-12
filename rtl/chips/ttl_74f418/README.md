# ttl_74f418 — 32-bit error detection and correction

Generic Hamming-style syndrome generator over 32 data bits + 7 check
bits. Outputs the syndrome and single/double error flags. The exact
parity masks here are illustrative — for a real ECC code the masks would
be set by the code's parity-check matrix.
