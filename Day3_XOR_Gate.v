// Day 3: XOR Gate (The "Inequality" Detector)
// Output is 1 only when A and B are different.

module day3_xor(
    input a,
    input b,
    output y
);
    // The caret symbol (^) is XOR
    assign y = a ^ b;

endmodule
