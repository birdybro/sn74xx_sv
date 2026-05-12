# ttl_74x297 — Digital PLL loop filter

Up/down counter that approximates an analog loop filter for digital PLL
applications. `inc` increases the count (toward a higher VCO frequency);
`dec` decreases it. The 8-bit `filter_out` would drive the VCO control
input.
