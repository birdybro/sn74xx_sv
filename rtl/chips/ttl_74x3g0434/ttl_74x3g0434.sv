// ttl_74x3g0434 - Two inverters + one buffer in one package.
module ttl_74x3g0434 (
    input  logic [1:0] a_inv,
    input  logic       a_buf,
    output logic [1:0] y_inv,
    output logic       y_buf
);
    assign y_inv = ~a_inv;
    assign y_buf =  a_buf;
endmodule
