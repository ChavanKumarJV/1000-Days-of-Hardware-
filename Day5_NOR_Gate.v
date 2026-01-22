// Day 5: NOR Gate (The other Universal Gate)
// Logic: Output is 1 only if A and B are BOTH 0.
// Truth Table:
// 0,0 -> 1
// 0,1 -> 0
// 1,0 -> 0
// 1,1 -> 0

module day5_nor(
    input wire a,
    input wire b,
    output wire y
);
    // We use ~(a | b) to say "NOT (A OR B)"
    assign y = ~(a | b);

endmodule
