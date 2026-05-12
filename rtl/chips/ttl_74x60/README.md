# ttl_74x60 — Dual 4-input expander

This chip was historically used to widen the AND-array of 74x23 / 74x50 /
74x53 / 74x55 AOI gates by feeding an internal node that those chips
expose at expander pins. The internal-node interface cannot be modeled
in synthesizable RTL — there is no wired-AND between separate FPGA
modules.

This module is provided as a digital-only approximation: for each 4-input
group, output `x = a[0] & a[1] & a[2] & a[3]` and `x_n = ~x`. If you
actually want to extend an AOI, widen the expression at the next level
of hierarchy (don't try to connect this to a 74x50, etc.).
