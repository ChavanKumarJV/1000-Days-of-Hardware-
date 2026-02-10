// Day 12: D Latch (The "Safe" Memory)
// Goal: Store data only when Enable is HIGH.
// Logic:
// If En=1, Q copies D.
// If En=0, Q stays same (Memory).

module day12_d_latch(
    input wire d,    // Data
    input wire en,   // Enable
    output reg q     // Output (must be reg for memory)
);

    // This block runs whenever D or En changes
    always @(*) begin
        if (en) begin
            q = d;  // Pass D to Output
        end
        // If en is 0, we do NOTHING (which means we remember the old q)
    end

endmodule
