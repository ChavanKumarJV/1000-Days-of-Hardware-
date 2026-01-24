// Day 7: Full Adder
// Goal: Add three bits (A, B, Carry In)
// Logic:
// Sum = 1 if an odd number of inputs are 1 (XOR)
// Cout = 1 if two or more inputs are 1 (Majority Gate)

module day7_full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);

    // Sum is the XOR of all three inputs
    assign sum = a ^ b ^ cin;

    // Carry Out is true if any pair of inputs is true
    assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
