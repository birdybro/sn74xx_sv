# ttl_74x95 — 4-bit PIPO shift register

`mode=1`: parallel load `q <= p`.
`mode=0`: shift right `q <= {din, q[3:1]}`.

The original chip has two clock inputs (CLK1 for shift, CLK2 for load);
we collapse them into a single clock with a mode select for FPGA
synthesis. Document this deviation in code review if your application
relies on independent clocks.
