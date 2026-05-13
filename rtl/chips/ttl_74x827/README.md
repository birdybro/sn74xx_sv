# ttl_74x827 — 10-bit buffer / line driver, non-inverting (3-state)

Per 74F827 (Fairchild DS009598): a single 10-bit non-inverting buffer
where the 10 outputs share a pair of active-low enables `/OE1` and
`/OE2`. Outputs drive their data only when both enables are low;
otherwise they go Hi-Z (represented here as muxed-zero with a `q_oe_n`
status signal).
