// Day 6: Half Adder
// Goal: Add two bits together (A + B)
// Inputs: A, B
// Outputs: Sum, Carry

module day6_half_adder(
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
);
    // Sum is 1 if inputs are different (XOR)
    assign sum = a ^ b;
    
    // Carry is 1 if both inputs are 1 (AND)
    assign carry = a & b;

endmodule
