# ttl_74x67 — AND-gated JK master-slave flip-flop

JK FF where J and K are each the AND of three input pins. The original
chip is master-slave (output updates on falling edge); this RTL uses
posedge for FPGA synthesis friendliness (see `docs/conventions.md`).
