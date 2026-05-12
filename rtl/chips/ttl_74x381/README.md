# ttl_74x381 — 4-bit ALU with generate/propagate

8 operations selected by `s[2:0]`. Generate/propagate outputs feed
external carry-lookahead.

| s   | F     |
|-----|-------|
| 000 | 0     |
| 001 | B - A |
| 010 | A - B |
| 011 | A + B |
| 100 | A^B   |
| 101 | A|B   |
| 110 | A&B   |
| 111 | 1's   |
