# ttl_74x682 — 8-bit magnitude/identity comparator (totem-pole, Q pull-ups)

Compares two 8-bit values `p` and `q`, asserting `/P=Q` low when they are
equal and `/P>Q` low when `p > q`. No enable inputs — outputs are always
driven (totem-pole). The 20 kΩ pull-up resistors on the Q inputs are a
datasheet feature for analog/switch sensing; they are not modeled in RTL.
