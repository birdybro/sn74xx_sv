// =============================================================================
// ttl_74x23 - Dual 4-input NOR gate with strobe (one gate expandable).
//
// Per the SN5423 / SN54H23 datasheet: each gate has four data inputs
// (A..D) and a strobe input G. Output Y = G & ~(A | B | C | D), i.e.
// the gate output is enabled when G is high.
//
// The first gate is "expandable" — a node ties out to a 74x60 expander
// for additional inputs. That expander interface is omitted in this RTL
// (it cannot be modeled inside a synthesizable module). Use a wider NOR
// expression at the next level of hierarchy if extra inputs are required.
// =============================================================================

module ttl_74x23 (
    input  logic [1:0] a,
    input  logic [1:0] b,
    input  logic [1:0] c,
    input  logic [1:0] d,
    input  logic [1:0] g,
    output logic [1:0] y
);
    assign y = g & ~(a | b | c | d);
endmodule
