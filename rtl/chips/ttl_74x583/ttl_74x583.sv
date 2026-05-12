// ttl_74x583 - 4-bit BCD adder.
module ttl_74x583 (
    input  logic [3:0] a, b,
    input  logic       cin,
    output logic [3:0] s,
    output logic       cout
);
    logic [4:0] raw, adj;
    always_comb begin
        raw  = a + b + cin;
        adj  = raw + 5'd6;
        cout = 0;
        s    = raw[3:0];
        if (raw >= 5'd10) begin
            cout = 1;
            s    = adj[3:0];
        end
    end
endmodule
