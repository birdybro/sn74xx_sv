// ttl_74x2g3404 - Single buffer and single inverter.
module ttl_74x2g3404 (
    input  logic a_buf, a_inv,
    output logic y_buf, y_inv
);
    assign y_buf =  a_buf;
    assign y_inv = ~a_inv;
endmodule
