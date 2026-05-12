# ttl_74x428 — 8080 system controller (Intel 8228)

Decodes the 8080 status byte and DBIN/WR strobes into separate memory
and I/O read/write strobes. Simplified RTL — references the relevant
status bits without modeling latching.
