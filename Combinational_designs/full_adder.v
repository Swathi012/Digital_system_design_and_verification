`include "half_adder.v"

module full_adder(input a, input b, input c, output sum, output carry);

wire sum1, carry1, carry2;
half_adder ha1(.a(a), .b(b), .sum(sum1), .carry(carry1));
half_adder ha2(.a(sum1), .b(c), .sum(sum), .carry(carry2));

assign carry = carry1 | carry2;


endmodule
