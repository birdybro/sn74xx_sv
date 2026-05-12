# ttl_74x61 — Triple 3-input expander for 74x52

Like `ttl_74x60` but with three 3-input sections instead of two 4-input
sections. The original chip's expander interface is internal-node based
and cannot be modeled in synthesizable RTL. This module is a digital
approximation that outputs the AND of each section's inputs.
