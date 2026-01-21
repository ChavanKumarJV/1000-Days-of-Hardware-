// Day 4: NAND Gate (The Universal Gate)
// Logic: Output is 0 only if A and B are BOTH 1.

module day4_nand(
    input wire a,
    input wire b,
    output wire y
);
    // We use ~(a & b) to say "NOT (A AND B)"
    assign y = ~(a & b);

endmodule
