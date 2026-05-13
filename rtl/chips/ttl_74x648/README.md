# ttl_74x648 — Octal bus transceiver/register/multiplexer, inverting (3-state)

Inverting variant of [74x646](../ttl_74x646/README.md). The storage
registers themselves capture the *true* input value on the clock edge;
the inversion is applied at the output mux so both real-time pass-through
and stored modes deliver the bitwise complement.
