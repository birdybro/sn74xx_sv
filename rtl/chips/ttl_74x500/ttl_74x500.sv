// ttl_74x500 - 6-bit flash ADC (digital approximation).
// Flash ADC is analog. Provide digital pass-through interface.
module ttl_74x500 (
    input  logic [5:0] threshold_select,  // digital "input" stand-in for analog
    output logic [5:0] code
);
    assign code = threshold_select;
endmodule
