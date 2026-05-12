// =============================================================================
// ttl_pkg.sv
//
// Shared helpers for the sn74xx_sv library. Most 7400-series chips are
// self-contained enough that they do not need shared definitions. The handful
// that do (parity, BCD-to-seven-segment decoding, gray-code helpers) live here
// so the implementations are not duplicated across chips.
//
// FPGA-synthesizable. No simulation-only constructs.
// =============================================================================

package ttl_pkg;

    // Even parity over an arbitrary-width vector. Returns 1 when the number
    // of 1s in `v` is odd; 0 when even. Used by 74x180, 74x280, 74x286 etc.
    function automatic logic xor_reduce_func(input logic [63:0] v, input int width);
        logic r;
        r = 1'b0;
        for (int i = 0; i < width; i++) begin
            if (i < 64) r ^= v[i];
        end
        return r;
    endfunction

    // BCD-to-seven-segment decode in the canonical 74x47 / 74x48 layout.
    // Bit ordering: {a, b, c, d, e, f, g} with the segment lit at logic 1.
    // The 7447 (open-collector, active-low outputs) is implemented as
    // ~bcd_to_7seg(...) in that chip's RTL.
    function automatic logic [6:0] bcd_to_7seg(input logic [3:0] bcd);
        case (bcd)
            4'd0:    return 7'b1111110; // a b c d e f
            4'd1:    return 7'b0110000; //   b c
            4'd2:    return 7'b1101101; // a b   d e   g
            4'd3:    return 7'b1111001; // a b c d     g
            4'd4:    return 7'b0110011; //   b c     f g
            4'd5:    return 7'b1011011; // a   c d   f g
            4'd6:    return 7'b1011111; // a   c d e f g
            4'd7:    return 7'b1110000; // a b c
            4'd8:    return 7'b1111111; // a b c d e f g
            4'd9:    return 7'b1111011; // a b c d   f g
            default: return 7'b0000000; // datasheet shows partial patterns for A-F;
                                        // chips that need those (74x47/48 modes)
                                        // override this case in their own RTL.
        endcase
    endfunction

endpackage : ttl_pkg
