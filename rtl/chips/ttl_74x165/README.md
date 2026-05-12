# ttl_74x165 — 8-bit PISO shift register

`sh_ld_n=0`: parallel load `sr <= p` on posedge.
`sh_ld_n=1`: shift right `sr <= {ser, sr[7:1]}`.

Serial output `q_h` is the LSB of `sr` (the bit shifted out first); `q_h_n`
is its complement.
