// Implamentation of Full subtractor using Half subtractor
`include "half_subtractor.v"
module full_subtractor(input a, input b, input c, output diff, output borrow);

wire diff1, borrow1, borrow2;
half_subtractor ha1(.a(a), .b(b), .diff(diff1), .borrow(borrow1));
half_subtractor ha2(.a(diff1), .b(c), .diff(diff), .borrow(borrow2));

assign borrow = borrow1 | borrow2;
endmodule

