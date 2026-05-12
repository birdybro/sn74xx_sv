# ttl_74x44 — Excess-3 Gray code to decimal decoder

Decodes the excess-3 reflected Gray code to one of ten active-low decimal
outputs. The truth table (from the SN5444/7444 datasheet) is:

| Gray | Dec |
|------|-----|
| 0010 | 0 |
| 0110 | 1 |
| 0111 | 2 |
| 0101 | 3 |
| 0100 | 4 |
| 1100 | 5 |
| 1101 | 6 |
| 1111 | 7 |
| 1110 | 8 |
| 1010 | 9 |

All other input codes leave every output high.

Exhaustive 16-vector testbench.
