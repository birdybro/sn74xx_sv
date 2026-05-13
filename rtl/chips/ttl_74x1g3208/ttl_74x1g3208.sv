// ttl_74x1g3208 - Single 3-input OR-AND combo gate (2-input OR into 2-input AND).
// y = (a OR b) AND c
module ttl_74x1g3208 (
    input  logic a, b, c,
    output logic y
);
    assign y = (a | b) & c;
endmodule
