// ttl_74x250 - 16-to-1 multiplexer (inverting output), no enable.
module ttl_74x250 (
    input  logic [3:0]  s,
    input  logic [15:0] d,
    output logic        y_n
);
    assign y_n = ~d[s];
endmodule
