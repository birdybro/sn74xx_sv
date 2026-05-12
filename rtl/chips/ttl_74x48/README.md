# ttl_74x48 — BCD to 7-segment decoder, active-high outputs

Same decode table and blanking/lamp-test priority as `ttl_74x47`, but
outputs are active-HIGH (segment lit when output is high) — for use with
common-cathode LED displays. Real chip has internal pull-up resistors;
the electrical detail is not modeled.

Port `seg[6:0]` is `{a, b, c, d, e, f, g}` active-high. 128-vector
testbench.
