# ttl_74x933 — 7-bit address bus comparator

Compares two 7-bit inputs and asserts `match` (active high) when they
are bit-for-bit equal. Models the MM74C933 in its baseline equality role;
the part's specific pinout (chip select polarity, enable, etc.) is not
fully documented here — verify against datasheet if those features are
needed.
