// ttl_74x36 - Quad 2-input NOR gate (different pinout from 74x02).
// Same logic as 74x02. Pin reordering is documented in the README.
module ttl_74x36 (
    input  logic [3:0] a,
    input  logic [3:0] b,
    output logic [3:0] y
);
    assign y = ~(a | b);
endmodule
