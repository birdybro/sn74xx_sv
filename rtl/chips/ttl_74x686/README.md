# ttl_74x686 — 8-bit magnitude comparator with separate enables (totem-pole)

Like [ttl_74x684](../ttl_74x684/README.md) but with two active-low
enable inputs: `g1_n` enables the `/P=Q` output and `g2_n` enables the
`/P>Q` output. A high enable forces its corresponding output to the
inactive (high) level.
