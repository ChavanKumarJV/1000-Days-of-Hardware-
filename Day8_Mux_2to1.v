// Day 8: 2-to-1 Multiplexer
// Goal: Select between two inputs based on a selector line
// Logic: If sel is 1, choose B. If sel is 0, choose A.

module day8_mux_2to1(
    input wire a,    // Input 0
    input wire b,    // Input 1
    input wire sel,  // Selector
    output wire y    // Output
);

    // The Ternary Operator ( ? : )
    // "Is sel true? If yes, output b. If no, output a."
    assign y = sel ? b : a;

endmodule
