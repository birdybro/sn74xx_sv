# ttl_74x968 — DRAM controller/driver for 16k/64k/256k/1M dRAM

Same address-mux + RAS/CAS strobe model as [ttl_74x409](../ttl_74x409/README.md),
widened to 10-bit row/column addresses for 1M-class DRAMs. Refresh logic is
not modeled — `ras_in`/`cas_in` must be driven by the surrounding controller.
