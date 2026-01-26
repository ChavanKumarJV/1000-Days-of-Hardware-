// Day 9: 4-to-1 Multiplexer
// Goal: Select one of 4 inputs using 2 select bits.
// New Concept: Vectors [3:0] and Behavioral Modeling (always block)

module day9_mux_4to1(
    input wire [3:0] in,    // 4 inputs (bundled)
    input wire [1:0] sel,   // 2 select bits
    output reg y            // Output (must be 'reg' to use inside always block)
);

    // The "always" block triggers whenever 'in' or 'sel' changes
    always @(*) begin
        case(sel)
            2'b00: y = in[0]; // If sel is 00, output 0th bit
            2'b01: y = in[1]; // If sel is 01, output 1st bit
            2'b10: y = in[2]; // If sel is 10, output 2nd bit
            2'b11: y = in[3]; // If sel is 11, output 3rd bit
        endcase
    end

endmodule
