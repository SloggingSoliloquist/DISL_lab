`include "full_adder.v"

module four_bit_adder(x0, x1, x2, x3, y0, y1, y2, y3, carry_in, s0, s1, s2, s3, carry_out);
input x0, x1, x2, x3, y0, y1, y2, y3, carry_in;
output  s0, s1, s2, s3, carry_out;

full_adder stage0(x0, y0, carry_in, s0, c1);
full_adder stage1(x1, y1, c1, s1, c2);
full_adder stage2(x2, y2, c2, s2, c3);
full_adder stage3(x3, y3, c3, s3, carry_out);

endmodule
