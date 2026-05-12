# ttl_74x93 — 4-bit binary counter (÷2 and ÷8)

Section A is a ÷2 toggle; section B is a 3-bit mod-8 counter. Cascade
externally for full 4-bit ÷16. Reset on `r0_1 & r0_2`.
