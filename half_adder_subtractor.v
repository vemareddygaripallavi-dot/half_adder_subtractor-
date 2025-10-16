// Verilog HDL code for Half Adder–Subtractor
module half_adder_subtractor(
    input a,          // First input bit
    input b,          // Second input bit
    input mode,       // Control: 0 = Add, 1 = Subtract
    output sum_diff,  // Sum or Difference output
    output carry_borrow // Carry (for add) or Borrow (for subtract)
);

    wire b_xor_mode;

    // XOR the second input with mode to select addition/subtraction
    assign b_xor_mode = b ^ mode;

    // Perform sum/difference
    assign sum_diff = a ^ b_xor_mode;

    // Carry for adder or Borrow for subtractor
    assign carry_borrow = a & b_xor_mode | (mode & ~a & b);

endmodule
