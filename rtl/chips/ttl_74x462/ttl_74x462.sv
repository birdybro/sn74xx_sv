// ttl_74x462 - Fiber-optic data-link transmitter (digital pass-through).
// The optical drive is electrical/physical; not modeled.
module ttl_74x462 (
    input  logic d_in,
    output logic d_out
);
    assign d_out = d_in;
endmodule
