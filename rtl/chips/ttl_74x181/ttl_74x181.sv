// =============================================================================
// ttl_74x181 - 4-bit arithmetic logic unit and function generator
//
// Active-high A, B inputs and F output. Cin (cn) is active high (carry in).
// Mode M=1 selects logic functions; M=0 selects arithmetic.
// 16 functions in each mode, selected by S[3:0].
//
// Implements the canonical active-high function table from the SN74181
// datasheet.
// =============================================================================

module ttl_74x181 (
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic [3:0] s,
    input  logic       m,        // 1 = logic, 0 = arithmetic
    input  logic       cn,       // carry in (active high)
    output logic [3:0] f,
    output logic       cn_p_4,   // carry out (active high)
    output logic       a_eq_b,
    output logic       p_n,      // propagate (active low)
    output logic       g_n       // generate (active low)
);
    logic [4:0] arith;
    logic [3:0] logic_f;

    // Logic functions (M=1)
    always_comb begin
        case (s)
            4'h0: logic_f = ~a;
            4'h1: logic_f = ~(a | b);
            4'h2: logic_f = (~a) & b;
            4'h3: logic_f = 4'h0;
            4'h4: logic_f = ~(a & b);
            4'h5: logic_f = ~b;
            4'h6: logic_f = a ^ b;
            4'h7: logic_f = a & (~b);
            4'h8: logic_f = (~a) | b;
            4'h9: logic_f = ~(a ^ b);
            4'hA: logic_f = b;
            4'hB: logic_f = a & b;
            4'hC: logic_f = 4'hF;
            4'hD: logic_f = a | (~b);
            4'hE: logic_f = a | b;
            4'hF: logic_f = a;
            default: logic_f = 4'h0;
        endcase
    end

    // Arithmetic functions (M=0). Cin is added.
    always_comb begin
        case (s)
            4'h0: arith = {1'b0, a} + {4'b0, cn};
            4'h1: arith = {1'b0, (a | b)} + {4'b0, cn};
            4'h2: arith = {1'b0, (a | (~b))} + {4'b0, cn};
            4'h3: arith = 5'h1F + {4'b0, cn};   // -1 + cn
            4'h4: arith = {1'b0, a} + {1'b0, (a & (~b))} + {4'b0, cn};
            4'h5: arith = {1'b0, (a | b)} + {1'b0, (a & (~b))} + {4'b0, cn};
            4'h6: arith = {1'b0, a} + {1'b0, (~b)} + {4'b0, cn};            // A - B - 1 + cn
            4'h7: arith = {1'b0, (a & (~b))} + 5'h1F + {4'b0, cn};
            4'h8: arith = {1'b0, a} + {1'b0, (a & b)} + {4'b0, cn};
            4'h9: arith = {1'b0, a} + {1'b0, b} + {4'b0, cn};
            4'hA: arith = {1'b0, (a | (~b))} + {1'b0, (a & b)} + {4'b0, cn};
            4'hB: arith = {1'b0, (a & b)} + 5'h1F + {4'b0, cn};
            4'hC: arith = {1'b0, a} + {1'b0, a} + {4'b0, cn};
            4'hD: arith = {1'b0, (a | b)} + {1'b0, a} + {4'b0, cn};
            4'hE: arith = {1'b0, (a | (~b))} + {1'b0, a} + {4'b0, cn};
            4'hF: arith = {1'b0, a} + 5'h1F + {4'b0, cn};
            default: arith = 5'h00;
        endcase
    end

    assign f      = m ? logic_f : arith[3:0];
    assign cn_p_4 = m ? 1'b1 : arith[4];
    assign a_eq_b = (f == 4'hF);
    // Generate/propagate: not fully modeled in this simplified RTL.
    assign p_n = ~|f;
    assign g_n = ~(arith[4]);
endmodule
