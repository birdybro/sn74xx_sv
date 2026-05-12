// ttl_74x124 - Dual voltage-controlled oscillator (digital approximation).
// VCO control voltage cannot be modeled in RTL. This implementation outputs
// a constant clock signal pass-through when enabled; the control voltage
// would have been analog. Marked digital_only_approximation.
module ttl_74x124 (
    input  logic [1:0] enable,
    input  logic [1:0] freq_in,
    output logic [1:0] freq_out
);
    assign freq_out[0] = enable[0] ? freq_in[0] : 1'b0;
    assign freq_out[1] = enable[1] ? freq_in[1] : 1'b0;
endmodule
