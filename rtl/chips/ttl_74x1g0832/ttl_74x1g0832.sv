// ttl_74x1g0832 - Single 3-input AND-OR combo gate (2-input AND into 2-input OR).
// y = (a AND b) OR c
module ttl_74x1g0832 (
    input  logic a, b, c,
    output logic y
);
    assign y = (a & b) | c;
endmodule
