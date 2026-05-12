# ttl_74x330 — Programmable logic array (12 in, 50 terms, 6 out)

Parameterized PLA. Pass `AND_FILE` (the input/complement masks for each
term, as $readmemb data) and `OR_FILE` (the term-to-output selection
masks) to program. Default unprogrammed state outputs all zeros.

Each term ANDs the input bits according to its include/complement masks.
Each output ORs the selected terms.
