// ttl_74x3g3404 - Two buffers + one inverter in one package.
module ttl_74x3g3404 (
    input  logic [1:0] a_buf,
    input  logic       a_inv,
    output logic [1:0] y_buf,
    output logic       y_inv
);
    assign y_buf =  a_buf;
    assign y_inv = ~a_inv;
endmodule
