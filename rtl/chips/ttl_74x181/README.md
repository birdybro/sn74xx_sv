# ttl_74x181 — 4-bit arithmetic logic unit and function generator

Classic 74181 ALU with 16 logic functions (M=1) and 16 arithmetic
functions (M=0). Uses the **active-high** convention for `a`, `b`, `f`,
and `cn` (carry-in).

Logic functions select S[3:0] → F:
- 0: ~A
- 6: A ^ B (XOR)
- 9: ~(A ^ B) (XNOR)
- B: A & B
- E: A | B
- F: A

Arithmetic functions add A, B, and Cin in various combinations. Examples:
- S=9: A + B + Cin
- S=6: A - B - 1 + Cin
- S=F: A - 1 + Cin

`a_eq_b` is high when F is all-ones. Propagate (`p_n`) and generate
(`g_n`) outputs are simplified; for full carry-lookahead with multiple
74181s, use this with `ttl_74x182`.
