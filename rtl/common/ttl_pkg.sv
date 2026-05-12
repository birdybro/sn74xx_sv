// =============================================================================
// ttl_pkg.sv
//
// Shared helpers for the sn74xx_sv library. Most 7400-series chips are
// self-contained enough that they do not need shared definitions. The handful
// that do (BCD-to-seven-segment decoding) live here.
//
// FPGA-synthesizable. No simulation-only constructs. Kept deliberately
// minimal so that Yosys's older Verilog frontend can read it without trouble.
// =============================================================================

package ttl_pkg;

    // BCD-to-seven-segment decode in the canonical 74x47 / 74x48 layout.
    // Bit ordering: {a, b, c, d, e, f, g} with the segment lit at logic 1.
    // The 7447 (open-collector, active-low outputs) is implemented as
    // ~bcd_to_7seg(...) in that chip's RTL.
    function automatic [6:0] bcd_to_7seg(input [3:0] bcd);
        case (bcd)
            4'd0:    bcd_to_7seg = 7'b1111110; // a b c d e f
            4'd1:    bcd_to_7seg = 7'b0110000; //   b c
            4'd2:    bcd_to_7seg = 7'b1101101; // a b   d e   g
            4'd3:    bcd_to_7seg = 7'b1111001; // a b c d     g
            4'd4:    bcd_to_7seg = 7'b0110011; //   b c     f g
            4'd5:    bcd_to_7seg = 7'b1011011; // a   c d   f g
            4'd6:    bcd_to_7seg = 7'b1011111; // a   c d e f g
            4'd7:    bcd_to_7seg = 7'b1110000; // a b c
            4'd8:    bcd_to_7seg = 7'b1111111; // a b c d e f g
            4'd9:    bcd_to_7seg = 7'b1111011; // a b c d   f g
            default: bcd_to_7seg = 7'b0000000; // chips that need 0xA-0xF
                                               // patterns override this case
                                               // in their own RTL.
        endcase
    endfunction

endpackage : ttl_pkg
