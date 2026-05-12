# ttl_74x135 — Quad XOR/XNOR with select

Four gates in two pairs; each pair shares a control input `c`. When the
pair's `c` is 0, the gates act as XORs; when 1, as XNORs:
`y = a ^ b ^ c`.
