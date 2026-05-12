// ttl_74avca406 - ESD-protected voltage-translation transceiver.
// Voltage translation not modeled (electrical); digital pass-through.
module ttl_74avca406 (
    input  logic       oe_n,
    input  logic       dir,
    input  logic [7:0] a_in, b_in,
    output logic [7:0] a_out, b_out,
    output logic       a_oe_n, b_oe_n
);
    always_comb begin
        if (oe_n)      begin a_out=0; b_out=0; a_oe_n=1; b_oe_n=1; end
        else if (dir)  begin b_out=a_in; a_out=0; b_oe_n=0; a_oe_n=1; end
        else           begin a_out=b_in; b_out=0; a_oe_n=0; b_oe_n=1; end
    end
endmodule
