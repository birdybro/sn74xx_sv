# ttl_74x182 — Look-ahead carry generator

Combinational carry-lookahead unit used to chain four 74181 ALUs. Takes
the propagate (`p_n`) and generate (`g_n`) outputs from each ALU (active
low) and produces the per-group carry-ins for the next-higher ALU plus a
group-level P and G output.
