# ttl_74x502 — 8-bit successive approximation register

Used with an external DAC and comparator for SAR-style ADC. On `start`,
the SAR begins iterating from MSB down; `cmp` indicates whether each
trial bit should be kept; `done` is asserted after 8 iterations.
