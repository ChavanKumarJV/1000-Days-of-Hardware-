// Day 11: SR Latch (The Simplest Memory)
// Goal: Store one bit of data using feedback.
// Logic:
// S=1, R=0 -> Q=1 (Set)
// S=0, R=1 -> Q=0 (Reset)
// S=0, R=0 -> Q=Old Q (Memory/Hold)
// S=1, R=1 -> INVALID (Don't do this!)

module day11_sr_latch(
    input wire s,      // Set
    input wire r,      // Reset
    output wire q,     // Main Output
    output wire q_bar  // Inverted Output
);

    // This is "Cross-Coupled" Logic
    // The output of one gate becomes the input of the other!
    assign q = ~(r | q_bar);
    assign q_bar = ~(s | q);

endmodule
