# ttl_74x124 — Dual VCO (digital approximation)

The real chip's voltage-controlled oscillator function is analog and
cannot be modeled in RTL. This module is a gated pass-through; use the
FPGA's MMCM/PLL for clock generation. Marked `digital_only_approximation`.
