// ttl_74hcu7204 - Dual unbuffered inverters.
// "Unbuffered" CMOS means the output stage is a single inverter pair without
// extra buffer transistors; logically still an inverter. This package has
// two independent inverters.
module ttl_74hcu7204 (
    input  logic [1:0] a,
    output logic [1:0] y
);
    assign y = ~a;
endmodule
