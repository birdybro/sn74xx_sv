# ttl_74x643 — octal bus transceiver, true/inverting (3-state)

A-to-B path is non-inverting (`b_out = a_in`); B-to-A path is inverting
(`a_out = ~b_in`). `gab` enables A→B (active high); `gba_n` enables B→A
(active low). Disabled side reads `8'b0` (muxed-zero stand-in for Hi-Z),
matching the convention used by 74x638/639/641/642.
