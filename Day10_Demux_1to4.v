// Day 10: 1-to-4 De-Multiplexer
// Goal: Send 1 input to one of 4 outputs based on select logic.
// Logic: Reverse of the MUX.

module day10_demux_1to4(
    input wire in,          // The single data input
    input wire [1:0] sel,   // 2 select bits
    output reg [3:0] y      // 4 output lines
);

    always @(*) begin
        // Step 1: Reset all outputs to 0 (safety first!)
        y = 4'b0000;

        // Step 2: Route the input to the correct spot
        case(sel)
            2'b00: y[0] = in; // Send 'in' to line 0
            2'b01: y[1] = in; // Send 'in' to line 1
            2'b10: y[2] = in; // Send 'in' to line 2
            2'b11: y[3] = in; // Send 'in' to line 3
        endcase
    end

endmodule
